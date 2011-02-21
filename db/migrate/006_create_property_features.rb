class CreatePropertyFeatures < ActiveRecord::Migration
  def self.up
    create_table :property_features do |t|
      t.float :value
      t.text :description
      t.references :property
      t.references :feature

      t.timestamps
    end
  end

  def self.down
    drop_table :property_features
  end
end
