class Rover

  def initialize(x, y, dir)
    @x = x
    @y = y
    @dir = dir
  end

  def read_instruction

  end

  def move
    case dir
      when "N" then @y + 1
      when "S" then @y - 1
      when "E" then @x + 1
      when "W" then @x - 1
    end
  end
  
end
