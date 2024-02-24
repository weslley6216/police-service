class AddIndexToPoliciesNumber < ActiveRecord::Migration[7.1]
  def change
    add_index :policies, :number, unique: true
  end
end
