require 'board'

describe Board do

subject (:board) {Board.new(10)}
let (:ship) {double(:ship)}

  it "responds to #place with 2 args" do
    expect(board).to respond_to(:place).with(2).argument
  end

  it "places a ship on the board" do
  	subject.place (ship, "A1")
  	expect(subject.grid["A1"]).to eq "X"

  	# x = board.draw_board["A1"]
  	# expect(x).to eq "X"
  end

  it "draws a board" do
  	expect(board.draw_board).to include("J10")
  end

  it "has a size of 10 on creation" do
  	expect(board).to respond_to :size
  end

end