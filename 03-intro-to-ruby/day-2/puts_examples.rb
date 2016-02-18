# instead of calling puts inside the function
#   try returning the result of an operation or just returning
#   a string that when invoked you can display to the terminal
#   using the 'puts' command
def add(operand_1, operand_2)
  operand_1 + operand_2
end

def compute
  "I am computing"
end

# we choose to display the result of the add/compute
#   functions to the terminal here as opposed to forcing it
#   within the function definitions
# this gives us flexibility on how we want to use our functions
puts add(4, 5)
puts compute
