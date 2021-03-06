class Property < ActiveRecord::Base
  belongs_to :user
  belongs_to :property_type
  has_many :property_photos
  
  accepts_nested_attributes_for :property_photos
end
