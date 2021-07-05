module Strings where

exclamation s = s ++ "!"

rvrs :: String -> String
rvrs "" = "" 
rvrs s = rvrs (drop 1 s) ++ take 1 s

main :: IO()
main = print $ rvrs "curry is awesome"