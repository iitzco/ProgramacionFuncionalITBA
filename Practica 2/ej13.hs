-- Funcion que retorna las raices de una ecuacion cuadratica.
-- Va a ser del tipo (Num a,Num b)=> (a,a,a) -> [t]. Devuelve una lista pues no se la cantida de raices que tiene.

alCuadrado x = x*x

calculo (a,b,c)= (alCuadrado b) - 4 * a * c

raices (a,b,c) = 
	if (a/=0)
		then if (calculo (a,b,c) ==0) 
			then [(-b)/2*a] 
			else if (calculo (a,b,c) > 0 )
				then [((-b) + sqrt (calculo(a,b,c)))/(2*a),((-b) - sqrt (calculo (a,b,c)))/(2*a)]
				else error "Raices imaginarias. No soporta numeros imaginarios"
		else if (b/=0)
			then [(-c)/b]
			else [c]
			


