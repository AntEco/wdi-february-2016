class CreateProfilesTable < ActiveRecord::Migration
  def change
    create_table :profiles do |table|
      table.string :location
      table.integer :user_id
    end
  end
end
