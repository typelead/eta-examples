# Hello GHCVM! Example

In this tutorial, you'll compile a simple Haskell program with GHCVM and run it, illustrating the basic workflows.

In GHCVM, there are primarily two workflows:

1. Trying out simple programs without any dependencies. (CabalVM not needed)

2. Working on a multi-file, multi-dependency project. (CabalVM needed)

## Without CabalVM

1. Create a new file called `Main.hs` and put the following as its contents:
  ```haskell
  -- Main.hs
  module Main where
  
  primes = filterPrime [2..]
    where filterPrime (p:xs) =
            p : filterPrime [x | x <- xs, x `mod` p /= 0]

  main = putStrLn $ "The 101st prime is " ++ show (primes !! 100)
  ```

2. Run the following command on the command line to compile the program:

  ```$ ghcvm -o Out.jar Main.hs```

  This will compile the program to a standalone JAR.

3. Run the program with java:

  ```$ java -classpath Out.jar ghcvm.main```

  The `ghcvm.main` class contains the entry point that initializes the GHCVM runtime system and runs the compiled program.

## With CabalVM

With CabalVM, things become *much* smoother.

1. Create a new directory called `ghcvm-first` and enter it.
  ```
  $ mkdir ghcvm-first
  $ cd ghcvm-first
  ```

2. Initialize the project with CabalVM.
  ```$ cabalvm init```
  This is an interactive command that will ask you questions and help you generate a cabal project file for your project. Select `Executable` (option 2) for project type and and `src` for the source directory. The project structure should look like this:
  ```
  ghcvm-first/
  |--src/
  |--ghcvm-first.cabal
  |
  ```
  Your directory structure may vary based on the options you chose, such as the license type.

3. Add the files `Main.hs` and `Primes.hs` in `src/` as shown below.
  ```haskell
  -- Main.hs
  module Main where

  import Primes

  main = putStrLn $ "The 101st prime is " ++ show (primes !! 100)
  ```

  ```haskell
  -- Primes.hs
  module Primes where

  primes = filterPrime [2..]
    where filterPrime (p:xs) =
            p : filterPrime [x | x <- xs, x `mod` p /= 0]
  ```
4. Update `ghcvm-first.cabal`, adding an `other-modules:` field.

  ```    other-modules: Primes```

5. To build & run, execute this command:

  ```$ cabalvm run```

6. That build may have been slow. In order to make the build faster, configure the project to make a dynamic executable:

  ```
  $ cabalvm configure --enable-executable-dynamic
  $ cabalvm run
  ```
  Note that you don't have to run `configure` again from then on unless you want to revert it back to uberjar-mode with `--disable-executable-dynamic`.

## Contact Us

If you had trouble with this tutorial, you can give us feedback by:

- filing an [issue](https://github.com/rahulmutt/ghcvm-examples/issues/new)

- discussing with us on [Gitter](https://gitter.im/rahulmutt/ghcvm) 
