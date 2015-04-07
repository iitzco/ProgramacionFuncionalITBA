sort3 (x,y,z) = if (x>=y)
				then if (x>=z)
					then if (y>=z)
						then (z,y,x)
						else (y,z,x)
					else (y,x,z)
				else if (z>=x)
					then if (y>=z)
						then (x,z,y)
						else (x,y,z)
					else (z,x,y)

sort3' (x,y,z) | x>=z && y>=z && y>=x = (z,x,y)
			   | x>=z && y>=z && y<=x = (z,y,x)
			   | x<=z && y>=z && y>=x = (x,z,y)
			   | x<=z && y<=z && y>=x = (x,y,z)
			   | x>=z && y<=z && y<=x = (y,z,x)
			   | x<=z && y<=z && y<=x = (y,x,z)

sort3'' (x,y,z) = if (x>=z && y>=z && y>=x)
				  then (z,x,y)
				  else if (x>=z && y>=z && y<=x)
				  	then (z,y,x)
				  	else if (x<=z && y>=z && y>=x)
				  		then (x,z,y)
				  		else if (x<=z && y<=z && y>=x)
				  			then (x,y,z)
				  			else if (x>=z && y<=z && y<=x)
				  				then (y,z,x)
				  				else (y,x,z)