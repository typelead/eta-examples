{-# LANGUAGE MagicHash, FlexibleContexts, TypeFamilies, DataKinds #-}
module Collections where

import Java

data {-# CLASS "java.util.Collection" #-} Collection = Collection (Object# Collection)
  deriving Class
data {-# CLASS "java.util.ArrayList" #-} ArrayList = ArrayList (Object# ArrayList)
  deriving Class
data {-# CLASS "java.util.List" #-} List = List (Object# List)
  deriving Class
data {-# CLASS "java.lang.Integer" #-} JInteger = JInteger (Object# JInteger)
  deriving Class

type instance Inherits ArrayList = '[List]
type instance Inherits List = '[Collection]

foreign import java unsafe "@new" newInteger :: Int -> JInteger
foreign import java unsafe "intValue" intValue :: JInteger -> Int
foreign import java unsafe "@new" newArrayList :: Java c ArrayList
foreign import java unsafe "add" add :: (Extends a Object, Extends b Collection) => a -> Java b Bool
foreign import java unsafe "get" get :: (Extends a Object, Extends b List) => Int -> Java b a
