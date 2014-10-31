class AddLikesToTutorial < ActiveRecord::Migration
  def change
    add_column :tutorials, :likes, :integer
  end
end
