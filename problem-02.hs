myButLast :: [a] -> a
myButLast [] = error "List must contain at least two elements."
myButLast [_] = error "List must contain at least two elements."
myButLast [x,_] = x
myButLast (_:xs) = myButLast xs
