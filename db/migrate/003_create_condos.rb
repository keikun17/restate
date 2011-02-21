class CreateCondos < ActiveRecord::Migration
  def self.up
    create_table :condos do |t|
      t.string :building_name
      t.string :unit_number
      t.integer :floor

      t.timestamps
    end
  end

  def self.down
    drop_table :condos
  end
end
