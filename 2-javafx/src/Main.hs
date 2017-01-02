module Main where

import JavaFX
import SampleApp

main :: IO ()
main = javafx (Proxy :: Proxy SampleApp)
