class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.integer :user_id
      t.integer :book_id
      t.datetime :taken_out
      t.datetime :due_date

      t.timestamps
    end
  end
end
