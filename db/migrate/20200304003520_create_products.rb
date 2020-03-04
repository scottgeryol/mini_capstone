class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.string :description
      t.string :color
      t.integer :weight
      t.string :tracklist
      t.string :genre
      t.integer :size
      t.integer :speed
      t.integer :year
      t.string :label

      t.timestamps
    end
  end
end
