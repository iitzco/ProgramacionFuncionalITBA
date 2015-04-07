{-

a) fix, donde
         fix f x = f (fix f) x
b) fork (fork,fork) (fork,fork), donde fork (f,g) x = (f x,g x)
c) apply apply apply, donde apply f x = f x
d) curry, donde
curry f x y = f (x,y)

-}

fix f x = f (fix f) x

-- :t ((tx - > a) -> (tx -> a)) -> tx -> a
-- fix es aplicable, recibe un tipo f y devuelve una funcion aplicable que recibe tx y devuelve a.
-- f a la vez es una funcion que recibe como parametro el tipo que devuelve fix f...es decir, tx -> a.
-- y devuelve una funcion que se aplica sobre x y devuelve a.

fork (f,g) x = (f x,g x)

-- :t fork es facil, (tx->a,tx->b) -> tx -> (a,b)


apply f x = f x

-- :t apply tiene tipo (x->a)-> (x->a)
-- Entonces apply apply apply tiene el mismo tipo que apply apply, debido a la igualdad.
-- apply apply es como apply f. Recibe una funcion (tipo f) que recibe un x y retorna un a.
-- a la vez, retorna una funcion que recibe un x y retorna un a.
-- Por lo tanto, apply apply :: (x->a)->(x->a).


curry' f x y = f (x,y)

-- :t ((tx,ty)->a)->tx->ty->a
-- curry es aplicable a f, y f es una funcion que recibe (tx,ty) y retorna un a.
-- a la vez, devuelve una funcion que recibe un tx y retorna una funcion que recibe
-- un ty y retorna un a.


