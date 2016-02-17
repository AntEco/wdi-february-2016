# class definition of Person
class Person
  # gives us the ability to set the
  #   first_name and last_name instance variables
  #   outside of the class definition
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # instance method that utilizes @first_name
  #   and @last_name instance variables
  def full_name
    "#{@first_name} #{@last_name}"
  end

  # instance method that utilizes the full_name instance method
  def walk
    puts "#{full_name} is walking"
  end

  # instance method that utilizes the full_name instance method
  def talk
    puts "#{full_name} is talking"
  end

  # instance method that utilizes the full_name instance method
  def teach
    puts "#{full_name} is teaching"
  end

  # class method
  def self.something
    puts "Something is happening"
  end
end

# this creates a new object with Orlando as the first name
#   and Caraballo as the last name
orlando = Person.new("Orlando", "Caraballo")

# this creates a new object with Daniel as the first name
#   and W as the last name
daniel = Person.new("Daniel", "W")

# we can get the first_name and last_name attributes
#   via these reader (getter methods)
puts orlando.first_name
puts orlando.last_name

# we can set the first_name and last_name attributes
#   via these writers (setter methods)
orlando.first_name = "Clone Orlando"
orlando.last_name = "Clone Caraballo"

# here we can see that my first name and last name have
#   have changed
puts orlando.first_name
puts orlando.last_name

# make orlando walk, talk and teach
orlando.walk
orlando.talk
orlando.teach

# make daniel walk, talk and teach
daniel.walk
daniel.talk
daniel.teach

# this invokes a class method
Person.something