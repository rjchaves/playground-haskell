module Cp4 where

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

myAbs :: Integer -> Integer
myAbs a = if a < 0 then -a 
          else a;
          
fun :: (a,b) -> (c, d) -> ((b,d), (a,c))
fun t1 t2 = ((snd t1, snd t2), (fst t1, fst t2))

x = (+)

f xs = x w 1
    where w = length xs
    
f1 :: p -> p
f1 x = x
  
--type alias
type Name = String

--Data declaration
--Type Constructor = Data Constructor 
data Pet = Cat | Dog Name
    deriving (Show)
