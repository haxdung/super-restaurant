class FixDateOfBirthUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :day_of_birth, :date_of_birth
  end
end
