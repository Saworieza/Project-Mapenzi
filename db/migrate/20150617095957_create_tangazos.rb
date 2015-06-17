class CreateTangazos < ActiveRecord::Migration
  def change
    create_table :tangazos do |t|
      t.text :description
      t.string :owner

      t.timestamps null: false
    end
  end
end
