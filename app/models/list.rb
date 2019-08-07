class List < ApplicationRecord
  belongs_to :task, class_name: 'Task'
end
