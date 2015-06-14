infinito :: Int

infinito = infinito + 1

constante :: Int -> Int -> Int

constante x y = x

par :: Int -> Bool
impar :: Int -> Bool

par 0 = True
par n 	| n>0 = impar (n-1)
		| n<0 = impar (n+1)

impar 0 = False
impar n | n>0 = par (n-1)
		| n<0 = impar (n+1)	


--data Maybe a = Nothing | Just a

lookup' :: Eq clave => clave -> [(clave, valor)] -> Maybe valor

lookup' k [] = Nothing
lookup' k ((k',v):kvs) = if (k==k') then Just v else lookup' k kvs

data Exception = DivByZero | NotFound | NullPointer | Other String deriving Show
data MayFail a = Raise Exception | Ok a deriving Show

lookup'' :: Eq clave => clave -> [(clave, valor)] -> MayFail valor
lookup'' k [] = Raise NotFound
lookup'' k ((k',v):kvs) = if (k==k') then Ok v else lookup'' k kvs

type ExHandler a = Exception -> a

tryCatch :: MayFail a -> (a -> b) -> ExHandler b -> b

tryCatch (Raise e) exito handler = handler e
tryCatch (Ok a) exito handler = exito a

data List a = Nil | Cons a (List a)

data Tree a = Hoja a | Nodo a (Tree a) (Tree a)


