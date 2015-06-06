sumDigit :: Char -> Int -> Int
sumDigit' :: Char -> Int -> Int


--sumDigit ’8’ 1 = 9

digitToInt :: Char -> Int
suma :: Int -> Int -> Int

compose f g = (\x -> f (g x))

digitToInt c 	|c=='0' = 0
				|c=='1' = 1
				|c=='2' = 2
				|c=='3' = 3
				|c=='4' = 4
				|c=='5' = 5
				|c=='6' = 6
				|c=='7' = 7
				|c=='8' = 8
				|c=='9' = 9
				|otherwise = error("No es un numero")

suma x y = x + y

sumDigit caracter numero = compose suma digitToInt caracter numero

sumDigit' caracter numero = ((suma . digitToInt) caracter) numero 
sumDigit'' caracter numero = (suma numero . digitToInt)  caracter 
