import Data.List
import System.IO

-- Create a function which produces the product of a list of numbers. 

-- function name, parameter 1, parameter 2 
addMe :: Int -> Int -> Int 


--functionName parameter 1 parameter 2 = operations (returned value)
--Cannot start with uppercase letter. 
addMe x y = x + y 

-- Takes in two touples with int as parameters, returns a touble. 
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x1, y1) (x2, y2) = (x1+x2, y1+y2)

-- Factorial, recursive functions 
factorial :: Int -> Int 

factorial 0 = 1 
factorial n = n * factorial(n-1)

-- guards 
isOdd :: Int -> Bool 

-- First way to create guard
isOdd n
    | n `mod` 2 == 0 = False
    | otherwise = True

    -- can also write it in this form 
isEven n = n `mod` 2 == 0


-- using guards
whatGrade :: Int -> String 
whatGrade age 
    | (age >= 5) && (age <= 6) = "Kindergarten"
    | age < 5 = "Home"
    

batAvgRating :: Double -> Double -> String

batAvgRating hits atBats 
    | avg <= 0.200 = "Terrible"
    | avg <= 0.250 = "Average"
    | avg <= 0.280 = "Decent!"
    | otherwise = "Superstar"
    where avg = hits/atBats


