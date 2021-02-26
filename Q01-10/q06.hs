isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = (reverse xs) == xs

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' xs = null $ filter (\(x, y) -> x == y) (zip xs (reverse xs))