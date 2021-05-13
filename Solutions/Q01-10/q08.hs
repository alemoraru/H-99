compress :: Eq a => [a] -> [a]
compress [] = []
compress (x:xs) = x : compressHelper xs x

compressHelper :: Eq a => [a] -> a -> [a]
compressHelper [] _        = []
compressHelper (x:xs) prev | x == prev = compressHelper xs x
                           | otherwise = x : compressHelper xs x