require 'ship'

describe Ship do

subject(:ship){Ship.new(2)}

  it "should respond to length" do
    expect(ship).to respond_to (:length)
  end

end