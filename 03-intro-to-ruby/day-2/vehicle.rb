# this is the parent class
class Vehicle
  attr_reader :wheels

  def initialize(wheels)
    @wheels = wheels
  end

  def move
    "I am moving using #{@wheels} wheels"
  end
end

# this is a sub class that inherits from Vehicle
class Sedan < Vehicle
  # we can make this a writable attribute
  #   only in the subclass
  attr_writer :wheels

  # we can add a new method that will only be available to us
  #   in this class
  def move_faster
    "I am moving faster using #{@wheels} wheels"
  end
end

# this is a sub class that inherits from Vehicle
class Suv < Vehicle
  # this class inherits all behavior from the parent class
end

# this creates a new sedan object with 4 wheels
#   because we are inheriting from vehicle inherit
#   the initialize method as well
sedan = Sedan.new(4)

# because we made wheels as an attr_writer
#   we can make changes to the attribute
#   after initially defining it
sedan.wheels = 10

# because we made wheels an attr_reader in the parent class
#   we can see how many wheels all sedans have
puts sedan.wheels

# we have access to not only the move method defined in the
#   parent class but also the move_faster method defined in the
#   sub class
puts sedan.move
puts sedan.move_faster