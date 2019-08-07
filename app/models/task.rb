class Task < ApplicationRecord
  scope :done, -> { where(done: true)}
end
