#Definicion de la clase matriz:

class Matriz

	attr_reader :fil, :col, :matriz
	
	def initialize(fil,col=fil)
		@fil, @col = fil, col
		@matriz = Array.new(fil){Array.new(col)}
	end

	def fill(array=nil)
		if(array != nil)
			@fil.times do |i|
				@col.times do |j|
					@matriz[i][j] = array[i][j]
				end
			end
		else
			p_rand = Random.new()
			@fil.times do |i|
				@col.times do |j|
					@matriz[i][j] = p_rand.rand(30)
				end
			end
		end
	end
	
	def +(other)
		if(other.is_a?Matriz)
			result = Array.new(@fil){Array.new(@col) {0}}
			@fil.times do |i|
				@col.times do |j|
	                result[i][j] = @matriz[i][j] + other.matriz[i][j]
			    end
			end
			r = Matriz.new(@fil,@col)
			r.fill(result)
			r
		end
	end
	
	def ==(other)
		cont = 0
		@fil.times do |i|
			@col.times do |j|
				if(other.is_a?Matriz)
					if(@matriz[i][j] == other.matriz[i][j])
						cont += 1
					end
				else
					if(@matriz[i][j] == other[i][j].to_i)
						cont += 1
					end
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












