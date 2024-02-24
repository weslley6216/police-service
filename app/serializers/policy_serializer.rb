class PolicySerializer < ActiveModel::Serializer
  has_one :insured_person
  has_one :vehicle
  attributes :number
  attributes :issued_date
  attributes :end_coverage_date
end
