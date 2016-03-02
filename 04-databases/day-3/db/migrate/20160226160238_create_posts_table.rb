class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |table|
      table.string :body
      table.integer :user_id
    end
  end
end
