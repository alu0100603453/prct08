require './lib/matriz.rb'

describe Matriz do
	before :each do
		@m1 = Matriz.new(2)
		@m1.fill([[1,2],[3,4]])
	end
	describe "# Almacenamiento" do
		it "Se almacena correctamente" do
			(@m1==([[1,2],[3,4]])).should eq(true)
		end
	end
	describe "# Operacion Suma" do
		it "sumamos la matriz consigo misma" do
			m = @m1+@m1
			@m1[0].should eq(2)
			@m1[1].should eq(4)
			@m1[2].should eq(6)
			@m1[3].should eq(8)
			
		end
	end
	describe "# Multiplicacion" do
		it "Multiplicamos @m1*@m1" do
			m = @m1*@m1
			@m1[0].should eq(12)
			@m1[1].should eq(18)
			@m1[2].should eq(28)
			@m1[3].should eq(42)

		end
	end
	
end
