module Main where

import Java hiding (add)
import Control.Monad (forM_)
import Collections

populateArray :: Int -> Java ArrayList ()
populateArray n = do
  forM_ range $ \i ->
    add (newInteger i)
  forM_ range $ \i -> do
    jint <- get i
    io $ print $ intValue jint * 5
  where range = [0..n]

main :: IO ()
main = java $ do
  list <- newArrayList
  list <.> populateArray 10
