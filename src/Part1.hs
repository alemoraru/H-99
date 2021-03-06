module Part1 where

data NestedList a = Elem a | List [NestedList a]

-- Fint the last element of a list
problem1 :: [a] -> a
problem1 []     = error "No elements in empty list"
problem1 [x]    = x
problem1 (_:xs) = problem1 xs 

-- Find the last but one element of a list
problem2 :: [a] -> a
problem2 []  = error "No elements in empty list"
problem2 [x] = error "Not enough elements in list"
problem2 (x:y:xs) | null xs   = x
                  | otherwise = problem2 (y:xs) 

-- Find the K'th element of a list. The first element in the list is number 1
problem3 :: [a] -> Int -> a
problem3 [] _     = error "No elements in empty list"
problem3 (x:xs) 1 = x
problem3 (x:xs) k = problem3 xs (k - 1) 

-- Find the number of elements of a list
problem4 :: [a] -> Int
problem4 []     = 0
problem4 (x:xs) = 1 + problem4 xs

-- Reverse a list
problem5 :: [a] -> [a]
problem5 []     = []
problem5 (x:xs) = problem5 xs ++ [x]

-- Find out whether a list is a palindrome
problem6 :: Eq a => [a] -> Bool
problem6 xs = (reverse xs) == xs

-- Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively)
problem7 :: NestedList a -> [a]
problem7 (Elem x)      = [x]
problem7 (List (x:xs)) = problem7 x ++ problem7 (List xs)

-- Eliminate consecutive duplicates of list elements
problem8 :: Eq a => [a] -> [a]
problem8 [] = []
problem8 (x:xs) = x : problem8Helper xs x

problem8Helper :: Eq a => [a] -> a -> [a]
problem8Helper [] _        = []
problem8Helper (x:xs) prev | x == prev = problem8Helper xs x
                           | otherwise = x : problem8Helper xs x

-- Pack consecutive duplicates of list elements into sublists.
problem9 :: Eq a => [a] -> [[a]]
problem9 []     = []
problem9 (x:xs) = (x : takeWhile (==x) xs) : problem9 (dropWhile (==x) xs)

-- Run-length encoding of a list
problem10 :: Eq a => [a] -> [(Int, a)]
problem10 xs = [(length x, head x) | x <- problem9 xs]