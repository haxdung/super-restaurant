class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :dish_id
      t.decimal :detail_discount, precision: 5, scale: 2
      t.integer :detail_price
      t.integer :detail_quantity

      t.timestamps
    end
  end
end
