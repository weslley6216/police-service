require 'rails_helper'

describe Policy, type: :model do
  describe 'associations' do
    it { should have_one(:vehicle) }
    it { should have_one(:insured_person) }
  end

  describe 'validations' do
    it { should validate_presence_of(:number) }
    it { should validate_numericality_of(:number) }
    it { should validate_uniqueness_of(:number).case_insensitive }
    it { should validate_presence_of(:issued_date) }
    it { should validate_presence_of(:end_coverage_date) }
  end

  context 'number' do
    it 'generate a random policy number when creating' do
      insured_person = build(:insured_person)
      vehicle = build(:vehicle)
      policy = create(:policy, insured_person: insured_person, vehicle: vehicle)

      expect(policy.number).to be_present
    end
  end

  it 'generate another policy number if repeats' do
    insured_person = build(:insured_person)
    vehicle = build(:vehicle)
    policy = create(:policy, insured_person: insured_person, vehicle: vehicle)
    another_policy = build(:policy, insured_person: insured_person,
                                    vehicle: vehicle)

    allow(SecureRandom).to receive(:random_number)
      .and_return(policy.number, SecureRandom.random_number(10**13))

    another_policy.save
    expect(policy.number).to_not eq(another_policy.number)
  end
end
