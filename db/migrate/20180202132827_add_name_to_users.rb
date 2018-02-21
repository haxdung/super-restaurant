class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :day_of_birth, :datetime
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :country, :string
    add_column :users, :active, :boolean
  end
end
