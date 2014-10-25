class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :tutorial_id
      t.string :image_url
      t.string :body

      t.timestamps
    end
  end
end
