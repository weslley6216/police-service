class Policy < ApplicationRecord
  has_one :vehicle, dependent: :destroy
  has_one :insured_person, dependent: :destroy

  validates :number, presence: true, uniqueness: true,
                     numericality: { only_integer: true },
                     length: { is: 13 }

  validates :issued_date, :end_coverage_date, presence: true

  before_create :set_default_dates, :generate_policy_number, if: :new_record?

  private

  def generate_policy_number
    self.number = SecureRandom.random_number((10**13) - 1).to_s.rjust(13, '0')
    generate_policy_number if Policy.exists?(number: number)
  end

  def set_default_dates
    self.issued_date = Time.zone.today
    self.end_coverage_date = 1.year.from_now
  end
end
