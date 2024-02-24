FactoryBot.define do
  factory :policy do
    sequence(:number) { |n| "300311001068#{n}" }
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
