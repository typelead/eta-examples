{-# LANGUAGE MagicHash #-}
module Spark.Types where

import Java

data {-# CLASS "org.apache.spark.SparkConf" #-} SparkConf =
  SparkConf (Object# SparkConf)
  deriving Class

data {-# CLASS "org.apache.spark.api.java.JavaSparkContext" #-} JavaSparkContext =
  JavaSparkContext (Object# JavaSparkContext)
  deriving Class

data {-# CLASS "org.apache.spark.api.java.JavaRDD" #-} JavaRDD a =
  JavaRDD (Object# (JavaRDD a))
  deriving Class

data {-# CLASS "org.apache.spark.api.java.function.Function" #-} Function a b =
  Function (Object# (Function a b))

data {-# CLASS "java.lang.Boolean" #-} Boolean = Boolean (Object# Boolean)
  deriving Class
