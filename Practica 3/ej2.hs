{-
fUno :: ((Int,Int)->Int)->Int->Int->Int
fUno f x y = f (x,y)
fDos :: (Char->Char->Bool)->(Char->Char)->(Int->Char)->Char->Int->Bool
fDos f1 f2 f3 a b = f1 (f2 a) (f3 b)
c) 1) fTres :: (Char,Char,Char) -> Bool
          fTres (c1,c2,c3) = (c1==c2) && (c2==c3)
2) ¿Qu ́e sucede con la funci ́on anterior si definimos
type Pers=(Char,Char,Char) y fTres :: Pers -> Bool?

-}

--a)
fUno :: ((Int,Int)->Int)->Int->Int->Int

fUno f x y = f (x,y)

--Esta currificada y es de alto orden.
--Ejemplo llamo fUno suma 3 4

suma (x,y) = x + y

--b)
fDos :: (Char->Char->Bool)->(Char->Char)->(Int->Char)->Char->Int->Bool
fDos f1 f2 f3 a b = f1 (f2 a) (f3 b)

--Esta currificada y es de alto orden.
--Ejemplo fDos devuelveTrue charAchar intAchar 'c' 10

devuelveTrue :: Char -> Char -> Bool
devuelveTrue x y = True

charAchar :: Char -> Char
charAchar x = 'c'

intAchar :: Int -> Char
intAchar x = 'h'

--c)
fTres :: (Char,Char,Char) -> Bool
fTresCurr :: Char -> Char -> Char -> Bool
fTres (c1,c2,c3) = (c1==c2) && (c2==c3)

--No esta currificada. Para currificar
fTresCurr c1 c2 c3 = fTres (c1,c2,c3)

type Pers = (Char,Char,Char) 
fTres' :: Pers -> Bool
fTres' (c1,c2,c3) = fTres (c1,c2,c3)

--Idem, no esta currificada, el type es un renombramiento
