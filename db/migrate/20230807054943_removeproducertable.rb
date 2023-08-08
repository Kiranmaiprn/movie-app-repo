class Removeproducertable < ActiveRecord::Migration[7.0]
  def change
    drop_table :producers
  end
end
