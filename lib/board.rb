class Board

	attr_accessor :size, :grid

	def initialize (size)
		@size = size
		draw_board
	end

	def draw_board
		@grid = Hash.new
		('A'..'J').each do |letter|
			(1..10).each do |i|
					@grid["#{letter}#{i}"] = "*"
          print @grid["#{letter}#{i}"]
      end
    end
 		@grid
	end

  def place (ship, co_ord)
  	@grid[co_ord] = "X"
  end

end