# Problem 21

Insert an element at a given position into a list.

**Solution(s)**:

```haskell
insertAt :: a -> [a] -> Int -> [a]
insertAt _ [] _ = []
insertAt k (x:xs) n | n == 1 = k : x : xs
                    | otherwise  = x : insertAt k xs (n - 1)  
```

# Problem 22

Create a list containing all integers within a given range.

**Solution(s)**:

```haskell
range :: Int -> Int -> [Int]
range l r = [l..r]

range' :: Int -> Int -> [Int]
range' l r = take (r - l + 1) $ iterate (+1) l
```

# Problem 23

Extract a given number of randomly selected elements from a list.

**Solution(s)**:

```haskell
-- Did not attempt yet
```

# Problem 24

Lotto: Draw N different random numbers from the set 1..M.

**Solution(s)**:

```haskell
-- Did not attempt yet
```

# Problem 25

Generate a random permutation of the elements of a list.

**Solution(s)**:

```haskell
-- Did not attempt yet
```

# Problem 26

(**) Generate the combinations of K distinct objects chosen from the N elements of a list

In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). For pure mathematicians, this result may be great. But we want to really generate all the possibilities in a list.

**Solution(s)**:

```haskell
-- Did not attempt yet
```

# Problem 27

Group the elements of a set into disjoint subsets.

a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.

b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.

**Solution(s)**:

```haskell
-- Did not attempt yet
```

# Problem 28

Sorting a list of lists according to length of sublists

a) We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of this list according to their length. E.g. short lists first, longer lists later, or vice versa.

b) Again, we suppose that a list contains elements that are lists themselves. But this time the objective is to sort the elements of this list according to their length frequency; i.e., in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.

**Solution(s)**:

```haskell
-- Did not attempt yet
```