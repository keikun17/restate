class CreateProperties < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|
      t.references :user
      t.references :property_type
      t.date :date_on_market
      t.date :date_off_market
      t.string :property_name
      t.text :property_description
      t.boolean :garage
      t.boolean :parking
      t.integer :room_count
      t.float :price
      t.float :price_min
      t.float :price_max
      t.text :other_property_details

      t.timestamps
    end
  end

  def self.down
    drop_table :properties
  end
end
