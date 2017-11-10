class RenameStatusToAvailable < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :status, :available
    rename_column :ingredients, :status, :available
  end
end
