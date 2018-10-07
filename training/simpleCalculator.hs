-- SimpleCalculator

import Data.Char
import Prelude hiding (map)

tokenizeChar :: Char -> Token
tokenizeChar c | elem c "+-*/" = TokOp (operator c)
               | isDigit c  = TokNum (digitToInt c)
               | isAlpha c  = TokIdent [c]
               | isSpace c  = TokSpace
               | otherwise  = error $ "Cannot tokenize " ++ [c]

tokenize :: String -> [Token]
tokenize str = map tokenizeChar

