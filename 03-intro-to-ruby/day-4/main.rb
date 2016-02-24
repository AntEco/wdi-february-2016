require "sinatra"
require "booty"

get "/" do
  @h1_text = Booty.call("I am a pirate")
  @something = "now it should say something"
  erb :home
end

get "/famous-pirates" do
  @h1_text = Booty.call("Here are the famous pirates")
  erb :famous_pirates
end

get "/pirate-text" do
  erb :pirate_text
end

post "/translator" do
  if !params[:english_text].nil?
    @pirate_text = Booty.call(params[:english_text])
  end
end

# you can use 
def some_text_here
  "some text"
end