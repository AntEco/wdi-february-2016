# class definition for Robot
class Robot
  # instance method
  def compute
    "I am computing"
  end

  # class method
  def self.destroy_humanity
    "Destroy humanity!"
  end
end

# create a new instance (object) based on
#   the class definition
robot = Robot.new

# this invokes the instance method
puts robot.compute

# this invokes the class method
puts Robot.destroy_humanity