require 'rails_helper'

describe Policy, type: :model do
  describe 'associations' do
    it { should have_one(:vehicle) }
    it { should have_one(:insured_person) }
  end

  describe 'validations' do
    it { should validate_presence_of(:number) }
    it { should validate_uniqueness_of(:number) }
    it { should validate_presence_of(:issued_date) }
    it { should validate_presence_of(:end_coverage_date) }
  end
end
