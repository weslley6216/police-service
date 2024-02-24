class InsuredPerson < ApplicationRecord
  belongs_to :policy

  validates :name, :cpf, presence: true
  validates :cpf, numericality: { greater_than_or_equal_to: 0 }
  validates :cpf, length: { is: 11 }
end
