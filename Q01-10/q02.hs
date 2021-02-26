myButLast :: [a] -> a
myButLast []  = error "No elements in empty list"
myButLast [x] = error "Not enough elements in list"
myButLast (x:y:xs) | null xs   = x
                   | otherwise = myButLast (y:xs) 