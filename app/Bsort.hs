module Bsort where

boblle :: Ord a => [a] -> [a]
boblle [] = []
boblle [x]  = [x]
boblle (x:y:xs) = if x < y then x:boblle (y:xs) else y:boblle (x:xs)

bauble :: Ord a => [a] -> [a]
bauble [] = []
bauble [x] = [x]
bauble xs = bauble (init boblled) ++ [last boblled]
          where boblled = boblle xs

bsort :: Ord a => [a] -> [a]
bsort s = case bsort' s of
               t | t == s    -> t
                 | otherwise -> bsort t
  where bsort' (x:x2:xs) | x > x2    = x2:bsort' (x:xs)
                         | otherwise = x:bsort' (x2:xs)
        bsort' s = s