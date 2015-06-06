--h x y = f (g x y)

f :: Int -> Int
g :: Int -> Int -> Int

f x = 10
g x y = x


--h = f . g

--False

h x = f . (g x)	

-- g x es una funcion de Int -> Int . Ahora g x recibe un Int y devuelve un Int, que lo toma f para devolver otro Int

--Verdadero

--h x y = (f . g) x y

--False