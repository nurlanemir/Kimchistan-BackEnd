class CreateSalads < ActiveRecord::Migration[5.1]
  def change
    create_table :salads do |t|
      t.string :name
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
