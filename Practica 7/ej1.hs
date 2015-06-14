map' :: (a -> b) -> [a] -> [b]

map' f [] = []
map' f (x:xs) = (f x):(map' f xs)

filter' :: (a -> Bool) -> [a] -> [a]

filter' f [] = []
filter' f (x:xs) = if (f x) then x:(filter' f xs) else filter' f xs

fold' :: (a -> b -> b) -> b -> [a] -> b

fold' f z [] = z
fold' f z (x:xs) = f x (fold' f z xs)

sum' :: [Int] -> Int

sum' = fold' (+) 0

any' :: [Bool] -> Bool

any' = fold' (\a -> \b -> a || b) False

all' :: [Bool] -> Bool

all' = fold' (\a -> \b -> a && b) True

codes :: [Char] -> [Int]

toInt :: Char -> Int

toInt 'a' = 160
toInt 'b' = 161

codes = map' toInt

remainders :: Int -> [Int] -> [Int]

remainders x = filter' (\num -> num `mod` x == 0) 

squares :: [Int] -> [Int]

squares = map' (\x -> x*x)

lengths :: [[a]] -> [Int]

lengths = map' (\l -> length l)

order :: [(Int,Int)] -> [(Int,Int)]

order = filter' (\(a,b) -> if a<3*b then True else False)

pars :: [Int] -> [Int]

pars = filter' (\n -> n `mod` 2 == 0)

chars :: [Char] -> [Char]

chars = filter' (\c -> c<='z' && c>= 'a')

moreThan :: Int -> [[Int]] -> [[Int]]

moreThan n = filter' (\l -> length l >= n) 


