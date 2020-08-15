myLast :: [a] -> a
myLast []     = error "List must contain at least one element."
myLast [x]    = x
myLast (_:xs) = myLast xs
