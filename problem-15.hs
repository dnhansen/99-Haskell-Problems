repli :: [a] -> Int -> [a]
repli list orig_n = aux list orig_n
  where
    aux [] _ = []
    aux (_:xs) 0 = aux xs orig_n
    aux (x:xs) n = x : aux (x:xs) (n-1)