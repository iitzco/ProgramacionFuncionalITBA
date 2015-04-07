seven x = 7

sign x = if x>0 then 1 else if x<0 then (-1) else 0

absolute' x = x * sign x

absolute x = if x>0 then x else if x<0 then x*(-1) else 0

and' (x,y) = if x && y then True else False

or' (x,y) = if x || y then True else False

not' x = if x then False else True

xor' (x,y) = if (x && not' y) || (y && not' x) then True else False

dividesTo (x,y) = if mod y x ==0 then True else False

isMultiple (x,y) = dividesTo(y,x)

isCommonDivisor (x,(y,z)) = and' (dividesTo (x,y),dividesTo (x,z))

isCommonMult (x,(y,z)) = and' (dividesTo (y,x),dividesTo (z,x))

swap (x,y) = (y,x)