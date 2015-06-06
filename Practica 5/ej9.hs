imparesEnListasDeListas :: [[Int]] -> [Int]
imparesEnListas :: [Int] -> [Int]

imparesEnListas [] = []
imparesEnListas (x:xs) = if (x `mod` 2 == 1) then x: imparesEnListas xs else imparesEnListas xs

imparesEnListasDeListas [] = []
imparesEnListasDeListas (x:xs) = (imparesEnListas x) ++ (imparesEnListasDeListas xs)


map' :: (a -> b) -> [a] -> [b]

map' f [] = []
map' f (x:xs) = f x : map' f xs 


filter' :: (a-> Bool) -> [a] -> [a]

filter' f [] = []
filter' f (x:xs) = if f x then x : filter f xs else filter f xs


foldr' :: (a -> b -> b) -> b -> [a] -> b

foldr' f neutro [] = neutro
foldr' f neutro (x:xs) = f x (foldr' f neutro xs)

imparesEnListasDeListas' :: [[Int]] -> [Int]

imparesEnListasDeListas' x = filter' (\x-> x`mod`2==1) (foldr' (++) [] x)
