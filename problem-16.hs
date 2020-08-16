dropEvery :: [a] -> Int -> [a]
dropEvery list orig_n = aux list orig_n
  where
    aux [] _ = []
    aux _ n | n < 1 = error "Input must be a positive integer."
    aux (x:xs) 1 = aux xs orig_n
    aux (x:xs) n = x : aux xs (n-1)