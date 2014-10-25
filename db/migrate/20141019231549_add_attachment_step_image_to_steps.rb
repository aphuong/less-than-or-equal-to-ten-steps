class AddAttachmentStepImageToSteps < ActiveRecord::Migration
  def self.up
    change_table :steps do |t|
      t.attachment :step_image
    end
  end

  def self.down
    remove_attachment :steps, :step_image
  end
end
