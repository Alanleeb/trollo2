class Task < ApplicationRecord
  belongs_to :list

  def self.by_title
  end

  def self.by_description
  end

end
