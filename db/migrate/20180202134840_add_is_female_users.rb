class AddIsFemaleUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_female, :boolean
  end
end
