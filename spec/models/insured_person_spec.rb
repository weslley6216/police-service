require 'rails_helper'

describe InsuredPerson, type: :model do
  subject { build(:insured_person) }

  describe 'associations' do
    it { should belong_to(:policy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:cpf) }
    it { should validate_uniqueness_of(:cpf).case_insensitive }
    it { should allow_value('123.456.789-01').for(:cpf) }
    it { should_not allow_value('invalid_cpf').for(:cpf) }
  end
end
