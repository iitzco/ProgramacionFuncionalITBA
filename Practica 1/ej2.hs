f x = let (y,z) = (x,x) in y

f' x = x

---------------------------------------------------

greaterThan (x,y) = if x>y then True else False

greaterThan' (x,y) | (x>y) = True
					| otherwise = False					

---------------------------------------------------

h (x,y) = let z = x + y in g (z,y) where g (a,b) = a - b 

h' (x,y) = x



