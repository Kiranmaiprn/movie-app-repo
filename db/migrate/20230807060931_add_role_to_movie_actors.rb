class AddRoleToMovieActors < ActiveRecord::Migration[7.0]
  def change
    add_column :movieactors, :role, :string
  end
end
