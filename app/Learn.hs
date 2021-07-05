module Learn where

a1 :: Integer
a1 = (2^) (2+2)

a2 :: Integer
a2 = (2^) $ 2 + 2

a3 = let x=5 in x
a4 = let x=5 in x * x
a5 = let x=5; y=6 in x *y
a6 = let x=3; y=1000 in x + 3

w1 :: Integer
w1 = x
  where x = 5

w2 :: Integer
w2 = x*x
  where x = 5
w6 = x*y
  where x = 5
        y = 6