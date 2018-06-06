class Board < ApplicationRecord
  has_many :lists, dependent: :destroy
  belongs_to :user
  def self.by_name
  end
end
