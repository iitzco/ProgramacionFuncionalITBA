{-
nextDiv, toma dos nu ́meros x, y y devuelve el primer divisor de y mayor que x.
sumDivs, toma un nu ́mero y devuelve la suma de sus divisores.
power, que toma un nu ́mero y un natural, y devuelve el resultado de elevar el primero a la potencia dada por el segundo.
dividesTo, de la pr ́actica 1.
sum, talquesum f i j=􏰀jk=if(k)
prime, que decide si un nu ́mero es primo.
phi, que toma un entero i y devuelve el i- ́esimo nu ́mero primo.
-}

nextDiv :: Int -> Int -> Int

nextDiv x y = nextDivRupper (x+1) y
nextDivRupper x y = if (y`mod`x == 0) then x else nextDiv (x+1) y

sumDivs :: Int -> Int
sumDivsRupper :: Int -> Int -> Int

sumDivs x = sumDivsRupper x x 

sumDivsRupper x 0 = 0
sumDivsRupper x y = if (x`mod`y==0) then y + sumDivsRupper x (y-1) else sumDivsRupper x (y-1)

power :: Int -> Int -> Int

power x 0 = 1
power x y = x * power x (y-1)

dividesTo :: Int -> Int -> Bool

dividesTo x y = if ( (abs (y)) > (abs (x)) || y==0 ) then False else dividesToR (abs(x)) (abs (y))

dividesToR 0 y = True
dividesToR x y = if (x < 0) then False else dividesToR (x-y) y

sum' :: (Int -> Int) -> Int -> Int -> Int

sum' f x y = sumR f x y

sumR f i y = if (i == y+1) then 0 else (f i) + sumR f (i+1) y

dup x = 2*x

prime :: Int -> Bool

prime x = if (x==0 || (abs (x)) == 1) then False else primeR (abs (x)) (abs(x)-1)

primeR x 1 = True
primeR x y = if (x`mod`y == 0) then False else primeR x (y-1)

phi :: Int -> Int

phi i = phiR i

phiR 1 =  2
phiR i = nextPrime ((phiR (i-1))+1) 


nextPrime x = if (prime x ) then x else nextPrime (x+1)	




