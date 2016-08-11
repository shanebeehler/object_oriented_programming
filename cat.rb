class Cat
  def initialize(name, preffered_food, meal_time)
    @name = name
    @preffered_food = preffered_food
    @meal_time = meal_time
  end

  def eats_at
    @meal_time
  end

  def meow
    "My name is #{@name} and I eat #{@preffered_food} at #{@meal_time}."
  end
end

a = Cat.new("Alex", "Chips", 10)

b = Cat.new("Brett", "Pizza", 3)

puts a.meow

puts ""

puts b.meow
