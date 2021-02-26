myLength :: [a] -> Int
myLength []     = 0
myLength (x:xs) = 1 + myLength xs

myLength' :: [a] -> Int
myLength' = foldr (\_ x -> x + 1) 0

myLength'' :: [a] -> Int
myLength'' = foldl (\x _ -> x + 1) 0