-- Exercises from chapter 1 

-- Task 3 
product :: [Int] -> Int

product [] = 1
product (x:xs) = x * product xs  

