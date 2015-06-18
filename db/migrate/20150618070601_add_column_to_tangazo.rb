class AddColumnToTangazo < ActiveRecord::Migration
  def change
    add_column :tangazos, :user_id, :integer
  end
end
