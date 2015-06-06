smaller :: (Integer,Integer,Integer) -> Integer
smaller' :: (Integer,Integer,Integer) -> Integer

andThen :: Bool -> Bool -> Bool
andThen' :: Bool -> Bool -> Bool

--a)
smaller (x,y,z) | x <= y && x <= z = x
                | y <= x && y <= z = y
                | z <= x && z <= y = z


smaller' = \(x,y,z) -> if (x <= y && x <= z) 
						then x 
						else 
							if (y <= x && y <= z) 
								then y 
								else z


--b)
second x = \x -> x   

second'= \x -> (\y -> y)  



--c)
andThen True y = y
andThen False y = False  

andThen' = \x -> if (x) then \y -> y else \y -> False      		   