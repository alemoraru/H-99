data Tree a = Leaf a | Branch (Tree a) a (Tree a)

cbalTree :: Int -> [Tree Char]
cbalTree n = undefined