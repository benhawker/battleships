class Ship

	COMPASS = [:N, :NE, :E, :SE, :S, :SW, :W, :NW]
  attr_reader :length

  def initialize (length, direction)
    @length = length
    @direction = direction
    raise "Use N, NE, E etc." unless COMPASS.include?(direction)
  end

  def set_direction
  	@direction
  end

end
