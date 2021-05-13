range :: Int -> Int -> [Int]
range l r = [l..r]

range' :: Int -> Int -> [Int]
range' l r = take (r - l + 1) $ iterate (+1) l