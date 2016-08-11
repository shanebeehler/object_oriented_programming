class Rover

  def initialize(x, y, dir)
    @x = x
    @y = y
    @dir = dir
  end

  def read_instructions(instruction)
    instruction.split("").each do |command|
      case command
      when "L" then self.turn("L")
      when "R" then self.turn("R")
      when "M" then self.move
      end
    end
    return "#{@x} #{@y} #{@dir}"
  end

  def turn(command)
    if command == "L" && @dir == "N"
      @dir = "W"
    elsif command == "L" && @dir == "E"
      @dir = "N"
    elsif command == "L" && @dir == "S"
      @dir = "E"
    elsif command == "L" && @dir == "W"
      @dir = "S"
    elsif command == "R" && @dir == "N"
      @dir = "E"
    elsif command == "R" && @dir == "E"
      @dir = "S"
    elsif command == "R" && @dir == "S"
      @dir = "W"
    elsif command == "R" && @dir == "W"
      @dir = "N"
    end
  end

  def move
    case @dir
    when "N" then @y += 1
    when "S" then @y -= 1
    when "E" then @x += 1
    when "W" then @x -= 1
    end
  end

  def output
    puts "#{@x} #{@y} #{@dir}"
  end
end

derp = Rover.new(1, 2, "N")

derp.read_instructions("LMLMLMLMM")

derp.output

derp2 = Rover.new(3, 3, "E")

derp2.read_instructions("MMRMMRMRRM")

derp2.output
