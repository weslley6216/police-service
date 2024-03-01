FactoryBot.define do
  factory :insured_person do
    policy
    name { 'John Doe' }
    sequence(:cpf) { |n| "357.782.144-0#{n}" }
  end
end
