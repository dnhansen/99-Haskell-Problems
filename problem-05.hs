myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = reverse xs ++ [x]

myReverseFast :: [a] -> [a]
myReverseFast list = aux list []
  where
    aux [] rev     = rev
    aux (x:xs) rev = aux xs (x:rev)
