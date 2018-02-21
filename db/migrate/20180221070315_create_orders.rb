class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :user_name
      t.string :user_phone
      t.string :user_address
      t.string :user_email
      t.string :user_country
      t.text :description
      t.integer :order_status_id

      t.timestamps
    end
  end
end
