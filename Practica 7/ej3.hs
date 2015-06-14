f = foldr (:) []

{-
f tiene tipo [a] -> [a].
Al aplicarla sobre cualquer funcion, por ejemplo [1,2,3], reduce asi

f [1,2,3]
foldr (:) [] [1,2,3]
foldr (:) [] 1:[2,3]
(:) 1 (foldr (:) [] [2,3])
(:) 1 (foldr (:) [] 2:[3])
(:) 1 ( (:) 2 (foldr (:) [] [3]))
(:) 1 ( (:) 2 (foldr (:) [] 3:[]))
(:) 1 ( (:) 2 ( (:) 3 (foldr (:) [][]))
(:) 1 ( (:) 2 ( (:) 3 ([])))
(:) 1 ( (:) 2 [3])
(:) 1 [2,3]
[1,2,3]

-}

idList :: [a] -> [a]

idList a = a


