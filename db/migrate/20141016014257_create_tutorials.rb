class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :image_url
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
