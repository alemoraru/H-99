myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

myReverse' :: [a] -> [a]
myReverse' = foldl (flip (:)) []

myReverse'' :: [a] -> [a]
myReverse'' = foldl (\a x -> x : a) []