class Step < ActiveRecord::Base
  has_attached_file :step_image, :styles => { :medium => "300x300>", :thumb => "100x100"}, :default_url => " "
  validates_attachment_content_type :step_image, :content_type => /\Aimage\/.*\Z/
end
