FactoryBot.define do
  factory :policy do
    number { SecureRandom.random_number((10**13) - 1).to_s.rjust(13, '0') }
    issued_date { Time.zone.today }
    end_coverage_date { 1.year.from_now.to_date }
  end

  trait :with_data do
    after(:create) do |policy|
      create(:vehicle, policy_id: policy.id)
      create(:insured_person, policy_id: policy.id)
    end
  end
end
