module Cp5 where

curry :: ((a, b) -> t) -> a -> b -> t
curry f a b = f (a, b)

uncurry :: (t1 -> t2 -> t3) -> (t1, t2) -> t3
uncurry f (a,b) = f a b

t :: p -> Bool
t _ = 9 `elem` [1..10]

partial :: (Foldable t, Eq a, Num a) => p -> t a -> Bool
partial _ = elem 9

partial2 :: (Eq a, Num a, Enum a) => a -> Bool
partial2 a = a `elem` [1..10]

example :: Num p => p
example = 1

co :: (b -> c) -> (a -> b) -> a -> c
co bc ab a = bc $ ab a

a1 :: (a -> b) -> a -> b 
a1 ab = \a -> ab a
