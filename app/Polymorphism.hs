module Polymorphism where

--           [0]  [1]   [2]    [3]
f :: Num a => a -> b -> Int -> Int 
f = undefined

-- [0] Constrained polymorphic
-- [1] fully polymorphic  
-- [2] Concrete
-- [3] Concrete

functionH :: [a] -> a
functionH (x:_) = x
  
functionC :: (Ord a) => a -> a -> Bool
functionC x v = x > v

functionS :: (a, b) -> b
functionS (x, y) = y