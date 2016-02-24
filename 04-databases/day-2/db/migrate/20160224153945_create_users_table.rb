class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |table|
      table.string :name
      table.datetime :birthday
    end
  end
end
