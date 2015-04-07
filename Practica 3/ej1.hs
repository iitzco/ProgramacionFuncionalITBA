--a)

boolToBoolToBool x y = x && y
-- :t Bool -> Bool -> Bool

aTobToa x y = x
-- :t a -> b -> a

f g h a = (g a, h a)
-- :t (a->b)->(a->c)->a->(b->c)

intTointToint x y  = x + y + 7 :: Int
-- :t Int -> Int -> Int

j f z = f (7 :: Int) + z + (8 :: Int)
-- :t (Int -> Int) -> Int -> Int

funcion w q r = w r q
-- :t (a->b->c)->b->a->c 


--b)

boolToBoolToBool' x y | y = x && y
-- :t Bool -> Bool -> Bool

intTointToint' x y  | x>10 = x + y + 7 :: Int
-- :t Int -> Int -> Int

j' f z | z/=0 = f (7 :: Int) + z + (8 :: Int)
-- :t (Int -> Int) -> Int -> Int


-- La uso como mi f
intToint x = x + 7 :: Int



