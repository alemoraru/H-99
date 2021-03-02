import Prelude hiding (gcd)

gcd :: Int -> Int -> Int
gcd a b | a == b = a
        | a < b  = gcd a (b - a)
        | a > b  = gcd (a - b) b 

-- NOTE: Re-using Euclid's algorithm to test for co-"primeness"
coprime :: Int -> Int -> Bool
coprime = \x y -> gcd x y == 1