FactoryBot.define do
  factory :vehicle do
    policy
    brand { %w[Fiat Honda Chevrolet Wolkswagen].sample }
    model { %w[Uno FIT Celta Gol].sample }
    year { %w[2008 2010 2012 2014].sample }
    plate { %w[ABC-1234 DEF-5678 GHI-9012 JLM-3456].sample }
  end
end
