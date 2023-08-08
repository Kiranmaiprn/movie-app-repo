class Renamecolumnforgenre < ActiveRecord::Migration[7.0]
  def change
    rename_column :genres, :type, :type_of_genre
  end
end
