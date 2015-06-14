takewhile :: (a -> Bool) -> [a] -> [a]

takewhile f [] = []
takewhile f (x:xs) = if f x then x:takewhile f xs else []

dropWhile' :: (a -> Bool) -> [a] -> [a]

dropWhile' f [] = []
dropWhile' f (x:xs) = if f x then dropWhile' f xs else (x:xs)