pack :: Eq a => [a] -> [[a]]
pack []     = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

encode_helper :: Eq a => [[a]] -> [(Int, a)]
encode_helper []    = []
encode_helper (x:xs) = (length x, head x) : encode_helper xs

encode :: Eq a => [a] -> [(Int, a)]
encode xs = encode_helper $ pack xs

encode' :: Eq a => [a] -> [(Int, a)]
encode' xs = [(length x, head x) | x <- pack xs]