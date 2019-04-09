class RemoveStatusFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :status, :string
  end
end
