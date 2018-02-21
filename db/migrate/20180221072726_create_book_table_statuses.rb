class CreateBookTableStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :book_table_statuses do |t|
      t.string :title

      t.timestamps
    end
  end
end
