class CreateUserRooms < ActiveRecord::Migration
  def change
    create_table :user_rooms do |table|
      table.integer :user_id
      table.integer :room_id
    end
  end
end
