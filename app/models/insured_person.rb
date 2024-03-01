class InsuredPerson < ApplicationRecord
  belongs_to :policy

  VALID_CPF = /\d{3}\.\d{3}\.\d{3}-\d{2}/

  validates :name, :cpf, presence: true
  validates :cpf, uniqueness: true
  validates :cpf, format: { with: VALID_CPF }
end
