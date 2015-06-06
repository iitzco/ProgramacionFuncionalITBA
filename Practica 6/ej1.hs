included :: [Int] -> Int -> Bool

included [] b = False
included (a:as) b = if (a == b) then True else included as b

intersectionE :: [Int] -> [Int] -> [Int]

intersectionE a [] = []
intersectionE [] b = []
intersectionE a (b:bs) = if (included a b) then b:(intersectionE a bs) else intersectionE a bs

intersectionC :: (Int -> Bool) -> (Int -> Bool) -> (Int -> Bool)

intersectionC f1 f2 = \x -> (f1 x && f2 x)

unionE :: [Int] -> [Int] -> [Int]

unionE a [] = a
unionE [] b = b
unionE a (b:bs) = if (included a b) then unionE a bs else (unionE a bs) ++ [b]

unionC ::  (Int -> Bool) -> (Int -> Bool) -> (Int -> Bool)

unionC f1 f2 = \x -> (f1 x || f2 x)

predE :: [Int] -> Int -> Bool

predE a b = if (included a b) then True else False

predC :: ( Int->Bool ) -> Int -> Bool

predC f x = f x