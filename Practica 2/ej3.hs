seven x = 7

-- Num b => a -> b

sign x = if x>0 then 1 else if x<0 then (-1) else 0

-- (Num b, Num a, Ord b) => b -> a

absolute' x = x * sign x

-- (Num a, Ord a) => a -> a   

absolute x = if x>0 then x else if x<0 then x*(-1) else 0

-- (Num a, Ord a) => a -> a  

and' (x,y) = if x && y then True else False

--  (Bool, Bool) -> Bool

or' (x,y) = if x || y then True else False

--  (Bool, Bool) -> Bool

not' x = if x then False else True

--  Bool-> Bool

xor' (x,y) = if (x && not' y) || (y && not' x) then True else False

--  (Bool, Bool) -> Bool

dividesTo (x,y) = if mod y x ==0 then True else False

-- Integral a=>(a, a) -> Bool

isMultiple (x,y) = dividesTo(y,x)

-- Integral a=>(a, a) -> Bool

isCommonDivisor (x,(y,z)) = and' (dividesTo (x,y),dividesTo (x,z))

-- Integral a=>(a, (a,a)) -> Bool

isCommonMult (x,(y,z)) = and' (dividesTo (y,x),dividesTo (z,x))

-- Integral a=>(a, (a,a)) -> Bool

swap (x,y) = (y,x)

-- (a,b) -> (b,a)

