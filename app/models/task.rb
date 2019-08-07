class Task < ApplicationRecord

  def self.done
    where(done: true).all
  end

  def self.not_done
    where(done: false).all
  end

end
