-- Function Types

import Data.Char

{-
Picks the first character of the string, categorizes it
turns it into a token
tokenizes the rest of the string 
-}
data Token = Digit | Alpha
    deriving(Show, Eq)


tokenize :: String -> [Token]
tokenize (c : rest) = 
    if isDigit c 
    then Digit : tokenize rest
    else Alpha : tokenize rest
tokenize [] = []



