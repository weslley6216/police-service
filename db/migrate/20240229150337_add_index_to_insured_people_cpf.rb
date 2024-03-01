class AddIndexToInsuredPeopleCpf < ActiveRecord::Migration[7.1]
  def change
    add_index :insured_people, :cpf, unique: true
  end
end
