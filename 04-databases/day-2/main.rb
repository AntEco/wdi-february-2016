require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:test.db"

get "/new_user" do
  User.create(name: "patrisha", birthday: "December 23, 1954")

  "A new user has been created"
end

get "/all_users" do
  @users = User.all

  erb :index
end

get "/new_post" do
  user = User.first
  Post.create(body: "some sort of content", user_id: user.id)

  "A new post has been created"
end