slice :: [a] -> Int -> Int -> [a]
slice xs i k = drop (i - 1) $ take k xs