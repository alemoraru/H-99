rotate :: [a] -> Int -> [a]
rotate [] _     = []
rotate xs 0     = xs
rotate all @ (x:xs) n | n > 0     = rotate (xs ++ [x]) (n - 1)
                      | otherwise = rotate (last all : init all) (n + 1)