# defines function
def add_five(number)
  number + 5
end

# adds 5 to 10
puts add_five(10)

# multiplies number by 15
def multiply_by_15(number)
  puts number * 15
end

multiply_by_15(100)

# adds all arguments together
def add_together(argument1, argument2, argument3, argument4)
  argument1 + argument2 + argument3 + argument4
end

puts add_together(1, -13, 30, 40)

# prints name 4 times
def print_4_times(name)
  4.times do
    puts "My name is: #{name}"
  end
end

print_4_times("Orlando")

# makes argument all uppercase
def uppercase(argument)
  argument.upcase
end

puts uppercase("nycda")