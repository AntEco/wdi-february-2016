class CreateRoomsTable < ActiveRecord::Migration
  def change
    create_table :rooms do |table|
      table.string :name
      table.integer :user_id
    end
  end
end
