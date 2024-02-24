class Vehicle < ApplicationRecord
  belongs_to :policy

  validates :brand, :model, :plate, :year, presence: true
end
