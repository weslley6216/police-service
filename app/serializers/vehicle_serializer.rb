class VehicleSerializer < ActiveModel::Serializer
  attributes :brand
  attributes :model
  attributes :plate
  attributes :year
end
