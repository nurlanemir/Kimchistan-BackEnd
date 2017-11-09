class AddColumnToProductLine < ActiveRecord::Migration[5.1]
  def change
    add_column :product_lines, :product_id, :integer
    add_column :product_lines, :ingredient_id, :integer
  end
end
