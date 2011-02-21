class PropertyPhoto < ActiveRecord::Base
  belongs_to :property
  has_attached_file :photo, :styles => {:thumb => "100x100", :medium => "300x300", :large => "400x400"}
end
