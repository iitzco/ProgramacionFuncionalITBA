insert :: Int -> [Int] -> [Int]

insert y [] = []
insert y (x:xs) = if x<y then x:insert y xs else y:x:xs
           
evenPos :: [Int] -> [Int]

evenPos []       = []
evenPos [x]      = [x]
evenPos (x:y:xs) = x:evenPos xs

fold' :: (a -> b -> b) -> b -> [a] -> b

fold' f z [] = z
fold' f z (x:xs) = f x (fold' f z xs)

--No se puede crear un insert con fold, pues no se sabe si ya se inserto el valor o no cuando te viene la lista en la recursion.

--Solo anda con listas que no poseen repetidos.

evenPos' :: [Int] -> [Int]

evenPos' list = (fold' (\a -> \l -> if indexOf a 0 list `mod` 2 ==0 then a:l else l) [] ) list

indexOf :: Int -> Int -> [Int] -> Int

bottom = bottom

indexOf n i [] = bottom
indexOf n i (x:xs) = if x==n then i else indexOf n (i+1) xs