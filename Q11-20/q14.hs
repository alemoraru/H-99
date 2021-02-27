dupli :: [a] -> [a]
dupli []     = []
dupli (x:xs) = x : x : dupli xs

dupli' :: [a] -> [a]
dupli' = concatMap (\x -> [x, x])

dupli'' :: [a] -> [a]
dupli'' = foldr (\x y -> x : x : y) []