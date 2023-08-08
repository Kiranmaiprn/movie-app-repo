class Removecolumnofactors < ActiveRecord::Migration[7.0]
  def change
    remove_column :actors, :role
  end
end
