class RenameTypeColumnInProduct < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :type, :of_type
  end
end
