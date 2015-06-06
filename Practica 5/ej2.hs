{-
sum, suma los elementos de una lista de nu ́meros.
any, devuelve True si algu ́n elemento de una lista es True.
all, devuelve True si todos los elementos de una lista son True.
codes, dada una lista de caracteres, devuelve la lista de sus c ́odigos.
remainders, dada una lista de nu ́meros, devuelve los restos de su divisi ́on por un nu ́mero.
squares, dada una lista de nu ́meros, devuelve la lista de sus cuadrados.
lengths, dada una lista de listas, devuelve la lista de sus longitudes.
order, dada una lista de pares ordenados de nu ́meros, devuelve la lista de aquellos cuya primer componente es menor que el triple de la segunda.
pairs, dada una lista de nu ́meros, devuelve la lista con aquellos que son pares.
chars, dada una lista de caracteres, devuelve la lista de los que son letras.
moreThan, dada una lista de listas xss y un nu ́mero n, devuelve la lista de aquellas listas de xss que tienen longitud mayor que n.
-}

sum' :: [Int] -> Int

sum' [] = 0;
sum' (x:xs) = x + sum' xs

any' :: [Bool] -> Bool

any' [] = False;
any' (x:xs) = if x then True else any' xs 

all' :: [Bool] -> Bool

all' [] = True
all' (x:xs) = x && all' xs

--codes :: [Char] -> Int

--codes [] = []
--codes (x:xs) = toInt x : codes xs

remainders :: [Int] -> Int -> [Int]

remainders [] x = []
remainders (y:ys) x = y`mod`x : remainders ys x

squares :: [Int] -> [Int]

squares [] = []
squares (x:xs) = x*x : squares xs

lengths :: [[a]] -> [Int]

lengths [] = []
lengths (x:xs) = length x : lengths xs

order :: [(Int,Int)] -> [(Int,Int)]

order [] = []
order ((a,b) : xs) = if (a < 3*b) then (a,b) : order xs else order xs

pairs :: [Int] -> [Int]

pairs [] = []
pairs (x:xs) = if (x`mod`2==0) then x:pairs xs else pairs xs

chars :: [Char] -> [Char]

chars [] = []
chars (x:xs) = if ((x>='a' && x<='z') || (x>='A' && x<='Z')) then x:chars xs else chars xs

moreThan :: [[a]] -> Int -> [[a]]

moreThan [] n = []
moreThan (x : xs) n = if (length x > n) then x : moreThan xs n else moreThan xs n



--------------------------------------------------

map' :: (a -> b) -> [a] -> [b]

map' f [] = []
map' f (x:xs) = f x : map' f xs 


filter' :: (a-> Bool) -> [a] -> [a]

filter' f [] = []
filter' f (x:xs) = if f x then x : filter f xs else filter f xs


foldr' :: (a -> b -> b) -> b -> [a] -> b

foldr' f neutro [] = neutro
foldr' f neutro (x:xs) = f x (foldr' f neutro xs)













 