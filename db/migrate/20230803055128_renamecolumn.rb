class Renamecolumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :year, :release_year
  end
end
