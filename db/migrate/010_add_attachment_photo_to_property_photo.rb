class AddAttachmentPhotoToPropertyPhoto < ActiveRecord::Migration
  def self.up
    create_table :property_photos do |t|
      t.references   :property
      t.string      :photo_file_name
      t.string      :photo_content_type
      t.integer     :photo_file_size
      t.datetime    :photo_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :property_photos
  end
end
