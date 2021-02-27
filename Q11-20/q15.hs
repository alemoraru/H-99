repli :: [a] -> Int -> [a]
repli [] _     = []
repli (x:xs) n = replicate n x ++ repli xs n

repli' :: [a] -> Int -> [a]
repli' xs n = concatMap (\x -> [x | i <- [1..n]]) xs