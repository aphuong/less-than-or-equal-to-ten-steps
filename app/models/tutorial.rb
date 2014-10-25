class Tutorial < ActiveRecord::Base
  belongs_to :user
  has_many :steps
  belongs_to :category

  has_attached_file :main_image, :styles => { :medium => "300x300>", :thumb => "100x100>"}, :default_url => " "
  validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/

  # accepts_nested_attributes_for :steps, allow_destroy: true
  # accepts_nested_attributes_for :category

end

  