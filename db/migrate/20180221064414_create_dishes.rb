class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :thumbnail
      t.string :image
      t.decimal :discount, precision: 5, scale: 2
      t.integer :active

      t.timestamps
    end
  end
end
