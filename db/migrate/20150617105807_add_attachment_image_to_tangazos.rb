class AddAttachmentImageToTangazos < ActiveRecord::Migration
  def self.up
    change_table :tangazos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tangazos, :image
  end
end
