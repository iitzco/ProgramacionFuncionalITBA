hail :: Int -> Int
hailstone :: Int -> Int
composeHailstones :: Int -> (Int -> Int)

hailstone n = if (n<=1)
				then 0
				else if (n`mod`2==0) 
					then (n`div`2)
					else (3*n+1)


hail n = analyze n 1

analyze n i =  if (isValid n i) then i else analyze n (i+1)

isValid n i = ((composeHailstones i) n) == 0


composeHailstones 1 = hailstone
composeHailstones i = hailstone . composeHailstones (i-1)
