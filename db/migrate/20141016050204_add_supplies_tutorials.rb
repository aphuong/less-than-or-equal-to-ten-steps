class AddSuppliesTutorials < ActiveRecord::Migration
  def change
    add_column :tutorials, :supplies, :string
  end
end
