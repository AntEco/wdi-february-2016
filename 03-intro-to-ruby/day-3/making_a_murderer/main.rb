require "sinatra"

# homepage
get "/" do
  erb :index
end

# innocent page
get "/innocent" do
  erb :innocent
end

# guilty page
get "/guilty" do
  erb :guilty
end