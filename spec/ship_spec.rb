require 'ship'

describe Ship do

subject(:ship){Ship.new(2, :N)}

  it "should respond to length" do
   expect(ship).to respond_to (:length)
  end

  #perhaps not required
  it "should respond to set direction" do
  	expect(ship).to respond_to (:set_direction)
  end	

 	it "can set direction of the ship" do
 		test_ship = Ship.new(2, :N)
 		expect(ship.set_direction).to eq :N
 	end

 	it "raises an error with non standard direction" do
 		expect{Ship.new(4, "d")}.to raise_error "Use N, NE, E etc." 
 	end

end