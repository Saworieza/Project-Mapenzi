class AddLookingforToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lookingfor, :boolean
  end
end
