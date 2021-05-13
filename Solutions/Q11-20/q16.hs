dropEvery :: [a] -> Int -> [a]
dropEvery xs n = [x | (x, i) <- zip xs (iterate (+1) 1), i `mod` n /= 0]