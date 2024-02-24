FactoryBot.define do
  factory :insured_person do
    policy
    name { 'Jon Doe' }
    cpf { '01234567891' }
  end
end
