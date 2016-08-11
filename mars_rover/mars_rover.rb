class Rover

  attr_writer :read_instructions

  def initialize(x, y, dir)
    @x = x
    @y = y
    @dir = dir
  end
end
