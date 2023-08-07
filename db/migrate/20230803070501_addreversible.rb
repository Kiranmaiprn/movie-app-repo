class Addreversible < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        change_column :movies, :description, :text
      end
      dir.down do 
        change_column :movies, :description, :string
      end
    end
  end
end
