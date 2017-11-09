class AddColumnToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :status, :boolean, default: true
    add_column :ingredients, :price, :integer
    add_column :ingredients, :name, :string
  end
end
