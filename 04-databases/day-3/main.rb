require "sinatra"
require "sinatra/activerecord"
require "sinatra/flash"
require "./models"

set :database, "sqlite3:pirate.db"
enable :sessions

get "/" do
  erb :index
end

get "/users" do
  @users = User.all
  erb :users
end

get "/signup" do
  erb :signup
end

post "/signup" do
  puts params.inspect
  User.create(params[:user])
  flash[:notice] = "New user has been created"

  puts "these are the params: " + params.inspect

  redirect "/signup"
end

get "/login" do
  erb :login
end

get "/users/:id" do
  "Id: " + params[:id]
end

post "/login" do
  @user = User.where(email: params[:email]).first

  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    flash[:notice] = "You have been signed in"
  else
    flash[:alert] = "The email and password combination does not match"
  end

  redirect "/login"
end

get "/signout" do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out"
  redirect "/"
end