class Bussiness < ApplicationRecord
  belongs_to :bussiness_type, class_name: 'BussinessType'
end
