class RemoveCommentsFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :comments, :string
  end
end
