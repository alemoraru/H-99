insertAt :: a -> [a] -> Int -> [a]
insertAt _ [] _ = []
insertAt k (x:xs) n | n == 1 = k : x : xs
                    | otherwise  = x : insertAt k xs (n - 1)  