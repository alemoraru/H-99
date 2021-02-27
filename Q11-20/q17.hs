split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)