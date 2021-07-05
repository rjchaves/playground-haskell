module Cp5Exercises where

f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h = g . f

data A
data B
data C

ac :: A -> C
ac = undefined

bc :: B -> C
bc = undefined

abc :: (A, B) -> (C,C)
abc (a,b) = (ac a, bc b)


munge :: (x -> y) -> (y -> (w,z)) -> x -> w
munge xy ywz x = fst $ ywz $ xy x
