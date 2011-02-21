class PropertyFeature < ActiveRecord::Base
  belongs_to :property
  belongs_to :feature
end
