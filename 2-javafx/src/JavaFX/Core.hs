module JavaFX.Core (javafx) where

import System.Environment
import JavaFX.Methods
import Data.Proxy
import Java.Utils

javafx :: Proxy a -> IO ()
javafx p = do
  jargs <- getJavaArgs
  launch (getClass p) jargs
