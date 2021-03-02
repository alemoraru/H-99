-- NOTE: This needs improvement (returns True for x = 1)
-- NOTE: Improvement with Sieve of Eratosthenes

isPrime :: Int -> Bool
isPrime x = not $ any (\x -> x == True) [True | i <- [2..(x `div` 2)], x `mod` i == 0]