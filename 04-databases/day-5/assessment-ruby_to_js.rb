# Convert the following from ruby to javascript

# a function that opens the door if the password is correct
def open_door(password)
  correct_password = "OpenSesame"

  if password == correct_password
    output = "The door is open."           
  else          
    output = "You fall to your doom."
  end

  output
end
            
# a function that makes a sandwich from a hash
def sandwich(ingredients)
   puts "#{ingredients['bread']} bread"
   puts "#{ingredients['cheese']} cheese"
   puts ingredients['protein']
   puts ingredients['condiment']
   puts "#{ingredients['bread']} bread"
end