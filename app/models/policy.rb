class Policy < ApplicationRecord
  has_one :vehicle, dependent: :destroy
  has_one :insured_person, dependent: :destroy

  validates :number, :issued_date, :end_coverage_date, presence: true
end