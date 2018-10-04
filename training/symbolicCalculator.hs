-- Symbolic calculation: Recursion



-- Dummy data types
data Token
data Expression



-- Lexical analysis. 
-- Takes a String and returns a list of tokens. 
-- Tokens = parts of string
tokenize :: String -> [Token]
tokenize = undefined  -- Undefined is at the bottom of the type hierarchy, meaning it can be converted to any type. 

-- Parser 
-- Takes a list of tokens and produces an 'Expression'.

parse :: [Token] -> Expression
parse = undefined

-- Evaluator
-- Takes an expression and returns a value of type Double 

evaluate :: Expression -> Double
evaluate = undefined



-- Working with recursion 

-- Making the recursive version of a loop
loop :: Int -> IO()


loop n = do
    if n < 5
        then do
        putStrLn (show n)
        loop (n + 1)
    else 
        return()



