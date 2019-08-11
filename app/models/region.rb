class Region < ApplicationRecord
  belongs_to :sightings, class_name: 'Sighting'
end
