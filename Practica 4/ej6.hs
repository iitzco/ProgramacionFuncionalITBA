mcd a b = if (a>b) then mcdR a b else mcd b a 


mcdR a 0 = a

mcdR a b =  mcdR b (a`mod`b)