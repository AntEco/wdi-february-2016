# this file is the controller

# make sure to always require sinatra first
require "sinatra"

# so because we did not define the dog class
#   in this file we must require it
require "./dog"

# method: get
# route: /
# view template: index
# action: everything from line 7 to 10
get "/" do
  erb :index
end

# method: get
# route: /dogs
# view template: dogs
# action: everything from line 16 to 23
get "/dogs" do
  @dogs = [
    Dog.new("fido"), 
    Dog.new("optimus prime")
  ]

  erb :dogs
end

# method: get
# route: /cats
# view template: cats
# action: everything from line 16 to 23
get "/cats" do
  erb :cats
end