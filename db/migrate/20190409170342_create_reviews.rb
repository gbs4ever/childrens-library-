class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :comments
      t.string :status

      t.timestamps
    end
  end
end
