#!/usr/bin/ruby

def buscar_Multiplo(num, den, multi)
			
		if (@num.to_i > 1 && @den.to_i > 1)
			
			while  (@resto!=0 && @multi <= @den.to_i && @multi <= @num.to_i)
				@multi=@multi+1		
				@resto=(@num.to_i).modulo(@multi.to_i)
			#Calcula mcm de el numerador		
		
			end
				if (@multi > @den.to_i) # Esto sucede cuando no tienen minimo común multiplo
					return 0
				elsif ((@den.to_i).modulo(@multi.to_i)== 0) #se comprueba que sea tambien del denominador
					return @multi
				else
					@resto=1				
					buscar_Multiplo(@num,@den,@multi)
				end
		else 	
						
			@multi=1
			return @multi
		end
end	
