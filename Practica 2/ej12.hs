--a)
iff :: Bool -> Bool -> Bool
iff' :: Bool -> Bool -> Bool



iff = \x -> \y -> if x then not y else y

iff' True y = not y
iff' False y = y



--b)
alpha :: a -> b -> b 
alpha' :: a -> b -> b 


alpha = \x -> \x -> x

alpha' x y = y
