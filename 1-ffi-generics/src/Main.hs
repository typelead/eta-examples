module Main where

import Java(java, io)
import Control.Monad(forM_)
import Collections

populateArray :: Int -> Java (ArrayList JInteger) ()
populateArray n = do
  let range = [0..n]
  forM_ range $ \i -> add (newInteger i)
  forM_ range $ \i -> do
    jint <- get i
    io $ print $ intValue jint * 5

main :: IO ()
main = do
  list <- newArrayList
  java list $ populateArray 10
