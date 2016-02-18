# in class Animal example
class Animal
  attr_accessor :type, :size, :color, :num_of_legs, :sound_that_it_makes

  def initialize(type, size, color, num_of_legs, sound_that_it_makes)
    @type = type
    @size = size
    @color = color
    @num_of_legs = num_of_legs
    @sound_that_it_makes = sound_that_it_makes
  end

  # we can use the @type and @sound_that_it_makes
  #   instance variables in this and all methods of this class
  def make_sound
    "This animal sounds like #{@sound_that_it_makes}"
  end

  def move
    "The #{@type} is moving"
  end
end

# remember that when we create a new Animal it implicitly calls the
#   initialize method automatically
animal = Animal.new("cow", "6 ft", "black", 4, "mooo")

# because we've set @type as an attr_accessor we have access to the
#   instance variable as an attribute on the animal object
puts animal.type

# we can call our defined methods on our objecs here
puts animal.make_sound
puts animal.move