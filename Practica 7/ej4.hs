--Definir filter en funcion de map y concat

concat' :: [[a]] -> [a]

concat' [] = []
concat' (x:xs) = x ++ concat' xs

map' :: (a -> b) -> [a] -> [b]

map' f [] = []
map' f (x:xs) = (f x):map' f xs

filter' :: (a -> Bool) -> [a] -> [a]

filter' f = concat.(map' (\a -> if f a then [a] else []))

