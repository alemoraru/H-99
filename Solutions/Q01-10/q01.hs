myLast :: [a] -> a
myLast []  = error "No elements in empty list"
myLast [x] = x
myLast (_:xs) = myLast xs 

myLast' [] = error "No elements in empty list"
myLast' xs = xs !! ((length xs) - 1)

myLast'' xs = head $ reverse xs