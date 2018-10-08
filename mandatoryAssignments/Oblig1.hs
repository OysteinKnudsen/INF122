module Oblig1 where -- Knudsen

import Data.Char
-- Part 1 

{-
    The grammar as regular expressions: 
    Re -> Sq | Sq + Re
    Sq -> Ba | Ba Sq
    Ba -> El | Ba*
    El -> lower-or-digit | (Re)
-}

{- 
    Task 1.1: Build a recursive descent parser with following criteria:
    * For a string not belonging to the language L(Greg) gives an error message.
    * For a correct regular expression from L(Greg) it builds an AST. 
-}

{-
    Steps to win: 
    1. Define data AST.
    2. Define data Token.
    3. Define function Tokenizer (tokenizer :: String -> [Token]) 
    4. Define the grammar. 
    5. Define parser functions for each production rule in the grammar.  
    6. Define the parser function (parse :: String -> AST)
 -}

-- Step 1: Define the data AST: 

data AST = C String | Seq AST AST | Star AST | Plus AST AST
    deriving (Eq, Show)

-- Step 2: Define data Token: 

data Token = 
      LeftParen
    | RightParen
    | Character
    | Digit
    | Add
    | Multiply
    deriving (Eq, Show)


convertToToken :: Char -> Token
convertToToken  word = case word of
    '(' -> LeftParen
    ')' -> RightParen
    '+' -> Add
    '*' -> Multiply
    _    |  isDigit word -> Digit
    _    |  isLower word -> Character
         

-- Step 3: Define the Tokenizer, which takes a String and brakes it into tokens:

tokenize :: String -> [Token]
tokenize (c : rest) = 
    convertToToken c : tokenize rest
tokenize [] = []






-- Step 4: Define the grammar:

-- Step 5: Define parser functions for each production rule in the grammar: 

parseRe :: [Token] -> (AST, [Token])
parseRe listOfTokens = undefined

parseSq :: [Token] -> (AST, [Token])
parseSq listOfTokens = undefined

parseBa :: [Token] -> (AST, [Token])
parseBa listOfTokens = undefined

parseEl :: [Token] -> (AST, [Token])
parseEl listOfTokens = undefined



-- Step 6: Define the parser function: 

-- 

{- Task 1.2: Regular grammars.
-}

{- Task 1.3: Implement a membership checker.
-}


-- Part 2: Improving the grammar such that it becomes completely determenistic.

{-
-}




