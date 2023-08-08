class Createjointable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :genres, :movies
  end
end
