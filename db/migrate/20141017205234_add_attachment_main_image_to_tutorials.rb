class AddAttachmentMainImageToTutorials < ActiveRecord::Migration
  def self.up
    change_table :tutorials do |t|
      t.attachment :main_image
    end
  end

  def self.down
    remove_attachment :tutorials, :main_image
  end
end
