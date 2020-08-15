elementAt :: [a] -> Int -> a
elementAt [] _        = error "List is not long enough."
elementAt _ n | n < 1 = error "List index out of range."
elementAt (x:_) 1     = x
elementAt (_:xs) n    = elementAt xs (n-1)
