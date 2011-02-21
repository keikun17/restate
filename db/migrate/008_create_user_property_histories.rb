class CreateUserPropertyHistories < ActiveRecord::Migration
  def self.up
    create_table :user_property_histories do |t|
      t.references  :user, :property
      t.string      :history_type
      
      t.date        :started_at, :ended_at
      
      t.timestamps
    end
  end

  def self.down
    drop_table :user_property_histories
  end
end
