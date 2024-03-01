class AddIndexToVehiclePlate < ActiveRecord::Migration[7.1]
  def change
    add_index :vehicles, :plate, unique: true
  end
end
