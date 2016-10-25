module JavaFX.Core (javafx) where

import System.Environment
import JavaFX.Methods

javafx :: String -> IO ()
javafx clsName = do
  jargs <- getJavaArgs
  launch (getClass clsName) jargs
