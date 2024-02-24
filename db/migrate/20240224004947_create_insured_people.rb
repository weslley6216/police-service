class CreateInsuredPeople < ActiveRecord::Migration[7.1]
  def change
    create_table :insured_people do |t|
      t.string :name
      t.string :cpf
      t.belongs_to :policy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
