class Sighting < ApplicationRecord
  belongs_to :animal, class_name: 'Animal'
  has_one :region
end
