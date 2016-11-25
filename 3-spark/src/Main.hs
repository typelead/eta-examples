{-# LANGUAGE ScopedTypeVariables #-}

import Java
import Spark.Types
import Spark.Methods as S

main :: IO ()
main = do
  conf <- newSparkConf
  java conf $ do
    setAppName "Simple Application"
    sc <- newSparkContext conf
    logData <- sc <.> textFile logfile >- cache
    numAs <- logData <.> S.filter (\(s :: String) -> 'a' `elem` s) >- count
    numBs <- logData <.> S.filter (\(s :: String) -> 'b' `elem` s) >- count
    io $ putStrLn $ "Lines with a: " ++ show numAs
                 ++ ", lines with b: " ++ show numBs
    sc <.> stop
  where logfile = "README.md"
