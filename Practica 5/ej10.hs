
carry (Uno,Uno) = True
carry (_,_) = False

data DigBin = Cero | Uno deriving Show

sumaDigBin :: DigBin -> DigBin -> DigBin

sumaDigBin Cero Cero = Cero
sumaDigBin Cero Uno = Uno
sumaDigBin Uno Cero = Uno
sumaDigBin Uno Uno = Cero

prodDigBin :: DigBin -> DigBin -> DigBin

prodDigBin Cero Cero = Cero
prodDigBin Cero Uno = Cero
prodDigBin Uno Cero = Cero
prodDigBin Uno Uno = Uno

type NumBin = [DigBin]

sumaBinCarry :: NumBin -> NumBin -> NumBin

sumaBinCarry [] [] = [Uno]
sumaBinCarry [Cero] [] = [Uno]
sumaBinCarry [Uno] [] = [Cero,Uno]
sumaBinCarry [] [Cero] = [Uno]
sumaBinCarry [] [Uno] = [Cero,Uno]
sumaBinCarry (Cero:xs) (Cero:ys)  = Uno : sumaBin xs ys
sumaBinCarry (Cero:xs) (Uno:ys)  = Cero : sumaBinCarry xs ys
sumaBinCarry (Uno:xs) (Cero:ys)  = Cero : sumaBinCarry xs ys
sumaBinCarry (Uno:xs) (Uno:ys)  = Uno : sumaBinCarry xs ys

sumaBin :: NumBin -> NumBin -> NumBin

sumaBin [] [] = []
sumaBin x [] = x
sumaBin [] y = y
sumaBin (x:xs) (y:ys) = if (carry (x,y)) then  Cero : sumaBinCarry xs ys  else (sumaDigBin x y) : sumaBin xs ys

prodPor2 :: NumBin -> NumBin

prodPor2 [] = []
prodPor2 x = x++[Cero]

cocientePor2 :: NumBin -> NumBin

cocientePor2 [] = []
cocientePor2 [Cero] = []
cocientePor2 [Uno] = []
cocientePor2 (x:xs) = x:cocientePor2 xs

restoPor2 :: NumBin -> NumBin

restoPor2 [] = []
restoPor2 [Cero] = [Cero]
restoPor2 [Uno] = [Uno]
restoPor2 (x:xs) = restoPor2 xs

revert :: [a]->[a]

revert [] = []
revert (x:xs) = (revert xs) ++ [x]

sumaBin' :: NumBin -> NumBin -> NumBin
prodPor2' :: NumBin -> NumBin
cocientePor2' :: NumBin -> NumBin
restoPor2' :: NumBin -> NumBin

sumaBin' a b = sumaBin (revert a) (revert b)
prodPor2' a= prodPor2 (revert a)
cocientePor2' a = cocientePor2 (revert a)
restoPor2' a = restoPor2 (revert a)

digBinToInt :: DigBin -> Int

digBinToInt Cero = 0
digBinToInt Uno = 1

numBinToIntRupper :: NumBin -> Int -> Int

numBinToIntRupper [] i = 0
numBinToIntRupper (x:xs) i = (pow (2,i) * (digBinToInt x)) + numBinToIntRupper xs (i+1)

numBinToInt :: NumBin -> Int
numBinToInt x = numBinToIntRupper x 0

pow (x,0) = 1
pow (x,i) = x * pow(x,i-1)

intToDigBin :: Int -> DigBin

intToDigBin 1 = Uno
intToDigBin 0 = Cero

intToNumBin :: Int -> NumBin

intToNumBin 0 = [Cero]
intToNumBin 1 = [Uno]
intToNumBin x = intToDigBin (x `mod` 2) : intToNumBin ( half ( x - (x `mod` 2) ))

halfRupper i x = if (i*2 == x) then i else halfRupper (i+1) x
half x = halfRupper 0 x