require './lib/matriz.rb'

describe Matriz do
	before :each do
		@m1 = Matriz.new(2)
		@m1.fill([[1,2],[3,4]])
		@m2 = Matriz.new(2,3)
		@m2.fill([[1,2,5],[3,4,5]])
	end
	describe "#ALMACENAMIENTO" do
		it "Se almacena correctamente" do
			(@m1 == ([[1,2],[3,4]])).should eq(true)
		end
	end
	describe "#OPERACIONES ARITMETICAS" do
		it "SUMA DE @M1 CONSIGO MISMA" do
			m = @m1+@m1
			(m == ([[2,4],[6,8]])).should eq(true)
		end
		it "RESTA DE @M1 CONSIGO MISMA" do
			m = @m1-@m1
			(m == ([[0,0],[0,0]])).should eq(true)
		end
		it "PRODUCTO DE @M1 CONSIGO MISMA" do
			m = @m1*@m1
			(m == ([[7,10],[15,22]])).should eq(true)
		end
	end
	describe "#OPERACIONES PROPIAS DE MATRICES" do
		it "TRANSPONER @M2" do
			m = @m2.trasp
			(m == ([[1,3],[2,4],[5,5]])).should eq(true)
		end
	end
end
