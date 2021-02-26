elementAt :: [a] -> Int -> a
elementAt [] _     = error "No elements in empty list"
elementAt (x:xs) 1 = x
elementAt (x:xs) k = elementAt xs (k - 1) 

elementAt' :: [a] -> Int -> a
elementAt' xs k = xs !! (k - 1)