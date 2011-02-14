class CreateProperties < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|

      t.references  :user, :property_size_unit
      t.date        :expires_at
      t.string      :name, :permalink, :type
      t.text        :description
      t.float       :property_size_value
      t.integer     :year_built
            
      t.timestamps
    end
  end

  def self.down
    drop_table :properties
  end
end
