module Typeclasses where

data TisAnInteger = 
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn a') = a == a'
  
data TwoIntegeres = 
  Two Integer Integer
 
instance Eq TwoIntegeres where
  (==) (Two one two) (Two one' two') = 
    one == one' && two == two'
    
data StringOrInt = 
  TisAnInt Int | TisAnString String
  
instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt a') = a == a'
  (==) (TisAnString a) (TisAnString a') = a == a'
  (==) (TisAnInt _) (TisAnString _) = False
  (==) (TisAnString _) (TisAnInt _) = False
  
data Pair a = Pair a a 

instance Eq a => Eq (Pair a) where
  (==) (Pair a1 a2) (Pair a1' a2') = a1 == a1' && a2 == a2'

data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a1 b1) (Tuple a2 b2) = a1 == a2 && b1 == b2
  
data Which a = ThisOne a | ThatOne a
  
instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a'
  (==) (ThatOne a) (ThatOne a') = a == a'
  (==) (ThisOne _) (ThatOne _) = False
  (==) (ThatOne _) (ThisOne _) = False

data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a') = a == a'
  (==) (Goodbye a) (Goodbye a') = a == a'
  (==) (Hello _) (Goodbye _) = False
  (==) (Goodbye _) (Hello _) = False
 