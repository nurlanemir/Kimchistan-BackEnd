class AddColumnToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :ingredient_id, :integer
    add_column :ingredients, :products_id, :integer
  end
end
