first (x,y) = x

second (x,y) = y

const' x y = x

compose f g = (\x -> f (g x))

apply f x = f x

subst f g x = f x (g x)

pairFunc (f1,f2) x y = (f1 (f2 x), f2 (f1 y))

{-

a) first (x,y) = x  

(a,b)-> a

b) second (x,y) = y

(a,b)-> b

c) const' x y = x

   a -> ( b -> a )

d) compose f g = (\x -> f (g x))

  (a -> b) -> (( c -> a) -> c -> b) 

e) apply f x = f x

 ( a -> b ) -> ( a -> b )  

f ) subst f g x = f x (g x)

 (a -> (b -> c)) -> (( a-> b) -> (a-> c))

g) pairFunc (f1,f2) x y = (f1 (f2 x), f2 (f1 y))

 (ty -> tx , tx -> ty) -> tx -> ( ty -> (tx , ty))

-}
