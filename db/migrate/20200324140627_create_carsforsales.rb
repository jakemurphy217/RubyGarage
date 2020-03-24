class CreateCarsforsales < ActiveRecord::Migration[5.2]
  def change
    create_table :carsforsales do |t|
      t.string :title
      t.string :brand
      t.integer :year
      t.integer :engine
      t.string :transmission
      t.integer :mileage
      t.string :color
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
