class RemoveStatusFromComment < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :status
  end
end
