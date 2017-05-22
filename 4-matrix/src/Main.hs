module Main where

import System.Environment
import Data.Proxy
import Data.Singletons
import Data.Singletons.TypeLits
import Data.Singletons.Decide
import qualified Data.Matrix as M

newtype Matrix (m :: Nat) (n :: Nat) a = Matrix (M.Matrix a)

instance (Show a) => Show (Matrix m n a) where
  show (Matrix m) = show m

mkMatrix :: forall m n a. (KnownNat m, KnownNat n) => (Int -> Int -> a) -> Matrix m n a
mkMatrix gen = Matrix (M.matrix (fromInteger $ natVal (Proxy :: Proxy m))
                                (fromInteger $ natVal (Proxy :: Proxy n))
                                (uncurry gen))

(><) :: forall m n p a. (KnownNat m, KnownNat n, KnownNat p, Num a)
  => Matrix m p a -> Matrix p n a -> Matrix m n a
(><) (Matrix m1) (Matrix m2) = Matrix (M.multStd m1 m2)

main :: IO ()
main = do
  [m, p, q, n] <- getArgs
  withSomeSing (read m) $ \m1@(SNat :: SNat m) ->
    withSomeSing (read p) $ \p1@(SNat :: SNat p) ->
      withSomeSing (read q) $ \q1@(SNat :: SNat q) ->
        withSomeSing (read n) $ \n1@(SNat :: SNat n) ->
          let mat1 = mkMatrix (+) :: Matrix m p Int
              mat2 = mkMatrix (*) :: Matrix q n Int
          in case p1 %~ q1 of
               Proved Refl -> print (mat1 >< mat2)
               Disproved _ -> putStrLn "Matrices of incompatible size."
