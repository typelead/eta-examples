module JavaFX.Core (javafx, Proxy(..)) where

import System.Environment
import JavaFX.Methods
import Data.Proxy
import Java

javafx :: (Class a) => Proxy a -> IO ()
javafx p = do
  jargs <- getJavaArgs
  launch (getClass p) jargs
