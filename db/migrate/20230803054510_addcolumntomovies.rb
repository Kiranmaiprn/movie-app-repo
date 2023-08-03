class Addcolumntomovies < ActiveRecord::Migration[7.0]
  def change
    
    add_column :movies, :director, :string
    add_column :movies, :year, :integer
    add_column :movies, :rating, :integer
    
    add_column :movies, :description, :text
  end
end
