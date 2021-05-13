data Tree a = Leaf a | Branch (Tree a) a (Tree a)

isTree :: Tree a -> Bool
isTree (Leaf _)       = True
isTree (Branch l _ r) = isTree l && isTree r