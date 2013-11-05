#Definicion de la clase matriz:

class Matriz

	attr_reader :fil, :col, :matriz
	
	def initialize(fil,col=fil)
		@fil, @col = fil, col
		@matriz = Array.new(fil){Array.new(col){nil}}
	end

	def fill(array=nil)
		if(array != nil)
			for i in (0..@fil-1)
				for j in (0..@col-1)
					@matriz[i][j] = array[i][j]
				end
			end
		else
			p_rand = Random.new()
			for i in (0..@fil-1)
				for j in (0..@col-1)
					@matriz[i][j] = p_rand.rand(30)
				end
			end
		end
	end
	
	def ==(other)
		cont = 0
		for i in (0..@fil-1)
			for j in (0..@col-1)
				if(@matriz[i][j] == other[i][j])
					cont += 1
				end
			end
		end
		if(cont == @fil*@col)
			return true
		else
			return false
		end
	end
end












