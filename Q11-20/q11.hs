data ListItem a = Multiple Int a | Single a
  deriving (Show)

pack :: Eq a => [a] -> [[a]]
pack []     = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

encode :: Eq a => [a] -> [(Int, a)]
encode xs = [(length x, head x) | x <- pack xs]

-- Actual exercise
encodeHelper :: Eq a => [(Int, a)] -> [ListItem a]
encodeHelper []     = []
encodeHelper (x:xs) | (fst x) == 1 = Single (snd x) : encodeHelper xs
                    | otherwise    = Multiple (fst x) (snd x) : encodeHelper xs

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified xs = encodeHelper $ encode xs
