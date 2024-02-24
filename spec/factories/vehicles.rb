FactoryBot.define do
  factory :vehicle do
    policy
    brand { 'Fiat' }
    model { 'Uno' }
    year { '2008' }
    plate { 'ABC-1234' }
  end
end
