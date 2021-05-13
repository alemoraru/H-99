import Prelude hiding (gcd)

-- Note: without hiding gcd from Prelude
-- you get an error for ambigous occurence
-- Note: Don't really see an alternative for this function

gcd :: Int -> Int -> Int
gcd a b | a == b = a
        | a < b  = gcd a (b - a)
        | a > b  = gcd (a - b) b 