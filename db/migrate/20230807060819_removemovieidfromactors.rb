class Removemovieidfromactors < ActiveRecord::Migration[7.0]
  def change
    remove_column :actors, :movie_id
  end
end
