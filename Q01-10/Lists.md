# Problem 1

(*) Find the last element of a list.

**Solution(s)**:

```haskell
myLast :: [a] -> a
myLast []  = error "No elements in empty list"
myLast [x] = x
myLast (_:xs) = myLast xs 

myLast' [] = error "No elements in empty list"
myLast' xs = xs !! ((length xs) - 1)

myLast'' xs = head $ reverse xs
```

# Problem 2

(*) Find the last but one element of a list.

**Solution(s)**:

```haskell
myButLast :: [a] -> a
myButLast []  = error "No elements in empty list"
myButLast [x] = error "Not enough elements in list"
myButLast (x:y:xs) | null xs   = x
                   | otherwise = myButLast (y:xs)
```

# Problem 3

(*) Find the K'th element of a list. The first element in the list is number 1.

**Solution(s)**:

```haskell
elementAt :: [a] -> Int -> a
elementAt [] _     = error "No elements in empty list"
elementAt (x:xs) 1 = x
elementAt (x:xs) k = elementAt xs (k - 1) 

elementAt' :: [a] -> Int -> a
elementAt' xs k = xs !! (k - 1)
```

# Problem 4

(*) Find the number of elements of a list.

**Solution(s)**:

```haskell
myLength :: [a] -> Int
myLength []     = 0
myLength (x:xs) = 1 + myLength xs

myLength' :: [a] -> Int
myLength' = foldr (\_ x -> x + 1) 0

myLength'' :: [a] -> Int
myLength'' = foldl (\x _ -> x + 1) 0
```

# Problem 5

(*) Reverse a list.

**Solution(s)**:

```haskell
myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

myReverse' :: [a] -> [a]
myReverse' = foldl (flip (:)) []

myReverse'' :: [a] -> [a]
myReverse'' = foldl (\a x -> x : a) []
```

# Problem 6

(*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

**Solution(s)**:

```haskell
isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = (reverse xs) == xs

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' xs = null $ filter (\(x, y) -> x == y) (zip xs (reverse xs))
```

# Problem 7

(**) Flatten a nested list structure.

Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).

**Solution(s)**:

```haskell
data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList a -> [a]
myFlatten (Elem x)      = [x]
myFlatten (List (x:xs)) = myFlatten x ++ myFlatten (List xs)
```

# Problem 8

(**) Eliminate consecutive duplicates of list elements.

If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

**Solution(s)**:

```haskell
compress :: Eq a => [a] -> [a]
compress [] = []
compress (x:xs) = x : compressHelper xs x

compressHelper :: Eq a => [a] -> a -> [a]
compressHelper [] _        = []
compressHelper (x:xs) prev | x == prev = compressHelper xs x
                           | otherwise = x : compressHelper xs x
```

# Problem 9

(**) Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

**Solution(s)**:

```haskell
pack :: Eq a => [a] -> [[a]]
pack []     = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)
```

# Problem 10

(*) Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

**Solution(s)**:

```haskell
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
```