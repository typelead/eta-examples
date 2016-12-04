{-# LANGUAGE MagicHash, FlexibleContexts, TypeFamilies, DataKinds #-}
module Collections where

data {-# CLASS "java.util.Collection" #-} Collection a = Collection (Object# (Collection a))
  deriving Class
data {-# CLASS "java.util.ArrayList" #-} ArrayList a = ArrayList (Object# (ArrayList a))
  deriving Class
data {-# CLASS "java.util.List" #-} List a = List (Object# (List a))
  deriving Class
data {-# CLASS "java.lang.Integer" #-} JInteger = JInteger (Object# JInteger)
  deriving Class

type instance Inherits (ArrayList a) = '[List a]
type instance Inherits (List a) = '[Collection a]

foreign import java unsafe "@new" newInteger :: Int -> JInteger
foreign import java unsafe "intValue" intValue :: JInteger -> Int
foreign import java unsafe "@new" newArrayList :: Java c (ArrayList a)
foreign import java unsafe "add" add :: (Extends a Object, Extends b (Collection a)) => a -> Java b Bool
foreign import java unsafe "get" get :: (Extends a Object, Extends b (List a)) => Int -> Java b a
