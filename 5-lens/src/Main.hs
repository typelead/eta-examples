module Main where

import Control.Lens
import Data.Aeson
import Data.Aeson.Lens
import Data.Aeson.Encode.Pretty
import qualified Data.ByteString.Lazy.Char8 as BS

main :: IO ()
main = do
  let json  = "[{\"clicks\":1},{\"clicks\":2},{\"clicks\":3}]"
      json' = json & (values . members . _Integral) %~ (+50)

  case decode json' :: Maybe Value of
    Just value -> putStrLn $ BS.unpack $ encodePretty value
    Nothing    -> putStrLn "Bad JSON!"
