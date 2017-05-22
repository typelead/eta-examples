# Dependent Types in Eta

This example demonstrates how you can work with dependent types in Eta via the `singletons` library. It shows an example of type-safe matrix multiplication.

To run the program, execute the following in this example's directory:

```shell
> etlas install --dependencies-only
> etlas run -- 1 2 3 4
Matrices of incompatible size.
> etlas run -- 1 2 2 4
(  8 16 24 32 )

```

## Contact Us

If you had trouble with this tutorial, you can give us feedback by:

- filing an [issue](https://github.com/typelead/eta-examples/issues/new)

- discussing with us on [Gitter](https://gitter.im/typelead/eta) 
