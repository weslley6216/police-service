class Vehicle < ApplicationRecord
  belongs_to :policy

  VALID_PLATE = /\A[A-Z]{3}-(?:\d{1}[A-Z]\d{2}|\d{1,4})\z/

  validates :brand, :model, :plate, :year, presence: true
  validates :plate, format: { with: VALID_PLATE }
  validates :plate, uniqueness: { case_sensitive: false }
  validates :year, numericality: { only_integer: true }, length: { is: 4 }

  before_create :set_uppercase_plate

  def set_uppercase_plate
    plate&.upcase!
  end
end
