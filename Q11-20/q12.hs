data ListItem a = Multiple Int a | Single a
  deriving (Show)

decodeModified :: Eq a => [ListItem a] -> [a]
decodeModified []                  = []
decodeModified ((Single x):xs)     = x : decodeModified xs
decodeModified ((Multiple n x):xs) = (replicate n x) ++ decodeModified xs