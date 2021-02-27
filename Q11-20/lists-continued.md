# Problem 11

(*) Modified run-length encoding.

Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

**Solution(s)**:

```haskell
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

```

# Problem 12

(**) Decode a run-length encoded list.

Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

**Solution(s)**:

```haskell
data ListItem a = Multiple Int a | Single a
  deriving (Show)

decodeModified :: Eq a => [ListItem a] -> [a]
decodeModified []                  = []
decodeModified ((Single x):xs)     = x : decodeModified xs
decodeModified ((Multiple n x):xs) = (replicate n x) ++ decodeModified xs
```

# Problem 13

(**) Run-length encoding of a list (direct solution).

Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

**Solution(s)**:

```haskell
-- Could not find an elegant solution as of yet 
```

# Problem 14

(*) Duplicate the elements of a list.

**Solution(s)**:

```haskell
dupli :: [a] -> [a]
dupli []     = []
dupli (x:xs) = x : x : dupli xs

dupli' :: [a] -> [a]
dupli' = concatMap (\x -> [x, x])

dupli'' :: [a] -> [a]
dupli'' = foldr (\x y -> x : x : y) []
```

# Problem 15

(**) Replicate the elements of a list a given number of times.

**Solution(s)**:

```haskell
repli :: [a] -> Int -> [a]
repli [] _     = []
repli (x:xs) n = replicate n x ++ repli xs n

repli' :: [a] -> Int -> [a]
repli' xs n = concatMap (\x -> [x | i <- [1..n]]) xs
```

# Problem 16

(**) Drop every N'th element from a list.

**Solution(s)**:

```haskell
dropEvery :: [a] -> Int -> [a]
dropEvery xs n = [x | (x, i) <- zip xs (iterate (+1) 1), i `mod` n /= 0]
```

# Problem 17

(*) Split a list into two parts; the length of the first part is given.

Do not use any predefined predicates.

**Solution(s)**:

```haskell
split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)
```

# Problem 18

(**) Extract a slice from a list.

Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.

**Solution(s)**:

```haskell
slice :: [a] -> Int -> Int -> [a]
slice xs i k = drop (i - 1) $ take k xs
```

# Problem 19

(**) Rotate a list N places to the left.

Hint: Use the predefined functions length and (++).

**Solution(s)**:

```haskell
rotate :: [a] -> Int -> [a]
rotate [] _     = []
rotate xs 0     = xs
rotate all @ (x:xs) n | n > 0     = rotate (xs ++ [x]) (n - 1)
                      | otherwise = rotate (last all : init all) (n + 1)
```

# Problem 20

(*) Remove the K'th element from a list.

**Solution(s)**:

```haskell
removeAt :: Int -> [a] -> [a]
removeAt _ []     = []
removeAt 1 (x:xs) = xs
removeAt n (x:xs) = x : removeAt (n - 1) xs
```