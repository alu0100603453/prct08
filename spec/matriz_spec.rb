require './lib/matriz.rb'

describe Matriz do
	before :each do
		@m1 = Matriz.new(2)
		@m1.fill([[1,2],[3,4]])
	end
	describe "# Almacenamiento" do
		it "Se almacena correctamente" do
			(@m1 == ([[1,2],[3,4]])).should eq(true)
		end
	end
	describe "# Operacion Suma" do
		it "sumamos la matriz consigo misma" do
			m = @m1+@m1
			(m == ([[2,4],[6,8]])).should eq(true)
			#m.should eq([[2,4],[6,8]])
		end
	end
	describe "# Multiplicacion" do
		it "Multiplicamos @m1*@m1" do
			m = @m1*@m1
			(m == ([[7,10],[15,22]])).should eq(true)
			#m.should eq([[7,10],[15,22]])

		end
	end
end
