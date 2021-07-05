module Main where

import Lib
import Data.Char

--Kleisli categories

type Writer a = (a, String)

(>=>) :: (a -> Writer b) -> (b -> Writer c) -> (a -> Writer c)
m1 >=> m2 = \x ->
  let (y, s1) = m1 x
      (z, s2) = m2 y
  in (z, s1 ++ s2)

  
return :: a -> Writer a
return x = (x,  "")

upCase :: String -> Writer String
upCase s = (map toUpper s, "upcase ")

toWords :: String -> Writer [String]
toWords s = (words s, "toWords ")

process :: String -> Writer [String]
process = upCase >=> toWords

otherAdd :: Int
otherAdd = (+) 1 1

add :: Int -> Int -> Int
add a b = a + b

(&) :: Int -> Int -> Int
(&) a b = a + b

test :: Int
test = 1 `add` 1

test2 :: Int
test2 = 1 & 1

identity :: p -> p
identity x = x

data Person = MkPerson String Int

raul :: Person
raul = MkPerson "raul" 27

data Bool' = True' | False'

boolean :: Bool'
boolean = True'

data Z = Y String | X
  deriving (Show)

j = Y "yoo"
k = X

--pattern matching

decons :: Z -> String
decons (Y s) = s 
decons X = "x" 

decons2 :: Z -> String
decons2 z = case z of
  Y s -> s
  X -> "x"

instance Eq Z where
  Y a == Y b = a == b 
  X == X = True
  _ == _ = False

class ToString a where
  toString :: a -> String 

instance ToString Z where
  toString (Y s) = "Yaaada " ++ s
  toString X = "Xuxa"

main :: IO ()
main = someFunc
