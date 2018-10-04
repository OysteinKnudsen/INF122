-- 3. Pure functions, Laziness, I/O and Monads 

-- Pure functions 

{- Haskell functions are also called pure functions, which means: 
- 1. A function returns exactly the same result every time it's called with the same arguments. 
- 2. A function has no side effects. Calling a function once is the same as calling it twice. 
-}


-- Simple I/O

-- main = True gives an error message. Because main has to produce an I/O action.


-- Laziness

{-
- Haskell will not calculate anything unless it's strictly nessecary. 
- Haskell won't evaluate arguments to a function before calling it. Unless proven otherwise
- Haskell assumes the arguments wont be used by the function. 
-}

-- Sequencing 

-- The order of the composition matters. The do notation is used for sequencing.
sequencing = do 
    putStrLn "The answer is: "
    print 43 

        

