slice :: [a] -> Int -> Int -> [a]
slice _ n _ | n < 1 = error "Start index must be positive."
slice _ n m | n > m = error "Start index cannot be larger than end index."
slice (x:_) 1 1 = [x]
slice (x:xs) 1 m = x : slice xs 1 (m-1)
slice (x:xs) n m = slice xs (n-1) (m-1)