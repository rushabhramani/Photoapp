class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
