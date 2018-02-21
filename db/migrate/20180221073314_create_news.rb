class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :thumbnail
      t.integer :active

      t.timestamps
    end
  end
end
