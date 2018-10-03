-- 1. Basics of haskell calling functions 


-- Function application 

b = "b"
c = "c"
d = "d"

a b c d = "Function a called with arguments " ++ b ++ " " ++ c ++ " " ++ d

 -- presedence. Function application has highest presedence.
 
sq a = a * a


-- A function can also take another function as a parameter. 

func1 param1 = param1 * 2 

compositeFunction functionParameter paramValue =  functionParameter paramValue + 3



-- Dollar and Dot notation 

-- The dollar sign ($) has the lowest presedence and binds to the right. 

-- Function composition has it's own operator; the dot notation. 

square x = x*x

dotCompositeFunction = (square . sqrt) $ 7 + 9

