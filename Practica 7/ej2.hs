map' :: (a -> b) -> [a] -> [b]

map' f [] = []
map' f (x:xs) = (f x):(map' f xs)

filter' :: (a -> Bool) -> [a] -> [a]

filter' f [] = []
filter' f (x:xs) = if (f x) then x:(filter' f xs) else filter' f xs

fold' :: (a -> b -> b) -> b -> [a] -> b

fold' f z [] = z
fold' f z (x:xs) = f x (fold' f z xs)

reverse' :: [Char] -> [Char]

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

pal :: [Char] -> Bool

pal x = isSameString x (reverse' x)

isSameString :: [Char] -> [Char] -> Bool

isSameString [] [] = True
isSameString x [] = False
isSameString [] y = False
isSameString (x:xs) (y:ys) = (x==y) && isSameString xs ys

hs :: [[Char]] -> Int

hs = fold' (\l -> \i -> if (startsWithH l) then 1+i else i) 0

startsWithH :: [Char] -> Bool

startsWithH [] = False
startsWithH (x:xs) = if (x == 'h' || x == 'H') then True else False

avgLength :: [[Char]] -> Float

avgLength pal = (letters pal) / (words' pal)

letters :: Fractional a => [[Char]] -> a

letters = fold' (\l -> \i -> i + length' l) 0

length' :: Fractional a => [b] -> a

length' = fold' (\c -> \i -> 1+i) 0

words' :: Fractional a => [[Char]] -> a

words' = fold' (\l -> \i -> i+1) 0

adjacents :: [Int] -> [(Int,Int)]

adjacents [] = []
adjacents (x:(y:xs)) = (x,y):adjacents (y:xs)
adjacents (x:xs) = []

adjDiff :: [Int] -> [(Int,Int)]

adjDiff = filter' (\(a,b) -> (a-b) `mod` 2 == 0).adjacents 

remDups :: [Int] -> [Int]

remDups [] = []
remDups (x:(y:xs)) = if (x/=y) then x:remDups (y:xs) else remDups (y:xs)
remDups (x:xs) = [x]

primes :: Int -> [Int]

primes n = primesRR n 2

primesRR :: Int -> Int -> [Int]

primesRR 0 m = []
primesRR n m = if (isPrime m) then m: (primesRR (n-1) (m+1)) else (primesRR n (m+1))

--De una lista de numeros, retorna los n primeros primos
primesVariant :: Int -> [Int] -> [Int]

primesVariant n x = primesR n (filter' isPrime x)

isPrime :: Int -> Bool

isPrime n = if (n == 1) then False else isPrimeR n (n-1)

isPrimeR :: Int -> Int -> Bool

isPrimeR n 1 = True
isPrimeR n m = if (n `mod` m == 0) then False else isPrimeR n (m-1)

primesR :: Int -> [Int] -> [Int]

primesR 0 x = []
primesR n [] = []
primesR n (x:xs) = x: primesR (n-1) xs 


 
