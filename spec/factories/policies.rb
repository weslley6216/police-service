FactoryBot.define do
  factory :policy do
    number { '01234567891' }
    issued_date { Time.zone.today }
    end_coverage_date { 1.year.from_now }
  end

  trait :with_data do
    after(:create) do |policy|
      create(:vehicle, policy_id: policy.id)
      create(:insured_person, policy_id: policy.id)
    end
  end
end
