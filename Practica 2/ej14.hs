first (a,b) = a

second (a,b) = b



{-

(3 == --3) && True
MAL FORMADA. Error de sintaxis. Deberia ser (3 == -(-3))

1 && 2 == 2
MAL FORMADA. No hay una comparacion entre booleanos.

1 + if ('a'<'b') then 3 else 5
BIEN FORMADA. Retorna 4.

let par = (True,4) in (if first par then first par else second par)
MAL FORMADA. Error de tipos, no puede devolver Bool o Num

(a + 23); b+4
MAL FORMADA. Error sintactico en ;





-}