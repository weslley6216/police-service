class CreatePolicies < ActiveRecord::Migration[7.1]
  def change
    create_table :policies do |t|
      t.string :number
      t.date :issued_date
      t.date :end_coverage_date

      t.timestamps
    end
  end
end
