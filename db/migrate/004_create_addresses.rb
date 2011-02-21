class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      
      t.references  :city, :province
      t.references  :addressable, :polymorphic => true
      t.string    :street_address, :town, :building_name
      t.integer   :zip_code
            
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
