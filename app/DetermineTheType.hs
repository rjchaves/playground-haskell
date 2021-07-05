{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

example :: Num p => p
example = 1


e1 :: Int
e1 = length [1,2,3,4]


z :: (Num a) => a -> a
z y = y * 10


y = 5 + 5
f :: Fractional a => a
f = 4 / y

r = print
t = print "woohoo!"
p = r "hello world"

