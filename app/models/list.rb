class List < ApplicationRecord
  belongs_to :board
  has_many :tasks
  def self.by_name
  end
end
