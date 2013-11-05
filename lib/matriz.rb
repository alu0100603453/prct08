#Definicion de la clase matriz:

class Matriz

	attr_reader :fil, :col, :matriz

	def initialize(fil,col=fil)
		@fil, @col = fil, col
		@matriz = Array.new(fil){Array.new(col){nil}}
	end
end