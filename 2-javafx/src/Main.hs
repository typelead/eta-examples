module Main where

import JavaFX
import SampleApp
import Data.Proxy

main :: IO ()
main = javafx (Proxy :: Proxy SampleApp)
