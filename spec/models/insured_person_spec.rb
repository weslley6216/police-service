require 'rails_helper'

describe InsuredPerson, type: :model do
  describe 'associations' do
    it { should belong_to(:policy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:cpf) }
    it { should validate_numericality_of(:cpf) }
    it { should validate_length_of(:cpf).is_equal_to(11) }
  end
end
