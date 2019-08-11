class Business < ApplicationRecord
  belongs_to :business_type, class_name: 'BusinessType'
end
