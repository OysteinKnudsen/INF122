-- Tokenizer: Data types


-- Defining the Token data type
-- Haskell data is immutable, meaning it won't be changed. 
{-
In Haskell you'll often see mutation replaced by construction. Instead of modifying one element of a data structure,
you construct a copy of it with the appropriate change in place.
This trick could be prohibitively expensive if you use the wrong data structures.
-}

-- Enumerated data types
boolToInt :: Bool -> Int 

boolToInt parm = if parm then 1 else 0

data Operator = Plus | Minus | Times | Div

opToChar :: Operator -> Char 
opToChar Plus = '+'
opToChar Minus = '-'
opToChar Times = '*'
opToChar Div = '/'

-- Lists 



-- Defining a list 
data List = Construct Int List | Empty 

lst0, lst1, lst2 :: List 
lst0 = Empty -- Empty list
lst1 = Construct 1 lst0 -- 1 element list 
lst2 = Construct 2 lst1 -- 2 element list 

singleton :: List -> Bool
singleton (Construct _ Empty) = True
singleton _ = False

sumLst :: List -> Int 
sumLst (Construct i rest) = i + sumLst rest
sumLst Empty = 0


-- The built in list 
-- ':' is the 


sumList :: [Int] -> Int 
sumList rest = foldr (+) 0 rest

newlst = [2, 3, 5]












