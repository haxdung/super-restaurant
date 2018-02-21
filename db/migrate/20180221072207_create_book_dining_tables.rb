class CreateBookDiningTables < ActiveRecord::Migration[5.1]
  def change
    create_table :book_dining_tables do |t|
      t.integer :user_id
      t.string :user_name
      t.string :user_phone
      t.string :user_mail
      t.string :user_address
      t.string :user_country
      t.integer :table_quantity
      t.integer :status_id
      t.string :suggestion

      t.timestamps
    end
  end
end
