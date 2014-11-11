class Removepaintingid < ActiveRecord::Migration
  def change
  	remove_column :albums, :painting_id, :integer
    add_column :paintings, :album_id, :integer
    add_column :albums, :user_id, :integer
  end
end
