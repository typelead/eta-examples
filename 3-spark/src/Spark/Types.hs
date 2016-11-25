{-# LANGUAGE MagicHash, TypeFamilies, DataKinds #-}
module Spark.Types where

data {-# CLASS "org.apache.spark.SparkConf" #-} SparkConf =
  SparkConf (Object# SparkConf)

data {-# CLASS "org.apache.spark.api.java.JavaSparkContext" #-} JavaSparkContext =
  JavaSparkContext (Object# JavaSparkContext)

data {-# CLASS "org.apache.spark.api.java.JavaRDD" #-} JavaRDD a =
  JavaRDD (Object# (JavaRDD a))

data {-# CLASS "org.apache.spark.api.java.function.Function" #-} Function a b =
  Function (Object# (Function a b))

data {-# CLASS "java.lang.Boolean" #-} Boolean = Boolean (Object# Boolean)

instance Class Boolean where
  unobj (Boolean b) = b
  obj = Boolean

instance Class SparkConf where
  unobj (SparkConf b) = b
  obj = SparkConf

instance Class JavaSparkContext where
  unobj (JavaSparkContext b) = b
  obj = JavaSparkContext

instance Class (JavaRDD a) where
  unobj (JavaRDD b) = b
  obj = JavaRDD

type instance Inherits Boolean = '[Object]
type instance Inherits JString = '[Object]
