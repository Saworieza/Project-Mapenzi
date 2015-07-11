class CreateVotes < ActiveRecord::Migration
	#drop_table(:votes, if_exists: true)
  def change
    create_table :votes do |t|
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
