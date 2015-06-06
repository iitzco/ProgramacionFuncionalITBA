-- twice :: (a -> a) -> a -> a
twice f x = f (f x) 

twice' = \f -> \x -> f (f x)


-- flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x 

flip'' = \f -> \x -> \y -> f y x


-- inc :: Int -> Int
inc = (+1)

inc' = \x -> x+1