seven x = 7

power4 x = let sqr y = y*y in sqr(sqr x)


-----------------------------------------

--a)

f _ = if (seven 'a' < 1) then 5 else power4 2
-- BIEN FORMADA. Devuelve 16

--b)

--g _ = if False then True 
-- MAL. Error sintactico. No puede haber un if then sin el else, pues siempre hay retorno.

--c) 
--a := 4
--MAL. Error sintactico

-- d) 
--h x = (1 < x && x < 100) || x == True || x == False 
-- MAL. no puede existir un tipo (Num Bool)

--e) False == (1 < 3)
-- BIEN FORMADA. Devuelve False.


-- f) 
--h x = (1 < x < 2)
-- MAL. Error sintactico.
