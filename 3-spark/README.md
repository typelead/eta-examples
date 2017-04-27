# Apache Spark Example

This example demonstrates how you can write an Apache Spark job in Eta. This example was tested with Spark 2.0.2.

## Building

To build the program, execute the following in this directory:

```shell
$ etlas clean
$ etlas configure --enable-uberjar-mode
$ etlas build
```

## Running

Note: This example expects a `README.md` in the directory that the command is run, as that is the input file.

- Let `SPARK_HOME` refer to the directory which contains your `Spark` installation.
- Let `EXAMPLE_HOME` refer to the absolute path to this directory.

```shell
$ $SPARK_HOME/bin/spark-submit
                  --class eta.main
                  --master local[4]
                  $EXAMPLE_HOME/dist/build/eta-spark/eta-spark.jar
                  +RTS --threaded -N4
```
Note that you should set the `-N` flag and `local` flags to the same value for
maximum benefit.

## Contact Us

If you had trouble with this tutorial, you can give us feedback by:

- filing an [issue](https://github.com/typelead/eta-examples/issues/new)

- discussing with us on [Gitter](https://gitter.im/typelead/eta)
