module Oblig1 where -- Knudsen

-- Part 1 

{- 
    Task 1.1: Build a recursive descent parser with following criteria:
    * For a string not belonging to the language L(Greg) gives an error message.
    * For a correct regular expression from L(Greg) it builds an AST. 
-}

{- 
    Recipe for success:
    * Each production rule is mapped into a RECURSIVE function.
    * Each function needs only to look at one token to decide which branch to take. 
    * Should not have left recursion.
    * Not have any kind of non-determinism.
    * Not have any ambigious grammars. 
-}

{-
    Notes from youtube
    * Parse tree started from root node.
    * From left to right. 
    * 
-}

{-
    The language: 
    Re -> Sq | Sq + Re
    Sq -> Ba | Ba Sq
    Ba -> El | Ba*
    El -> lower-or-digit | (Re)
-}




{- Task 1.2: Regular grammars.
-}

{- Task 1.3: Implement a membership checker.
-}


-- Part 2: Improving the grammar such that it becomes completely determenistic.

{-
-}




