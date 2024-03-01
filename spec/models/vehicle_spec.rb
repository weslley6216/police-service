require 'rails_helper'

describe Vehicle, type: :model do
  subject { build(:vehicle) }

  describe 'associations' do
    it { should belong_to(:policy) }
  end

  describe 'validations' do
    context 'presence' do
      it { should validate_presence_of(:brand) }
      it { should validate_presence_of(:model) }
      it { should validate_presence_of(:year) }
      it { should validate_presence_of(:plate) }
    end

    context 'plate' do
      it { should allow_value('ABC-1234').for(:plate) }
      it { should allow_value('ABC-1A34').for(:plate) }
      it { should_not allow_value('ABC-AAAA').for(:plate) }
      it { should_not allow_value('123-AAAA').for(:plate) }
      it { should validate_uniqueness_of(:plate).case_insensitive }
    end

    context 'year' do
      it { should validate_numericality_of(:year) }
      it { should validate_length_of(:year).is_equal_to(4) }
    end
  end

  describe '#set_uppercase_plate' do
    let(:vehicle) { build(:vehicle, plate: 'abc-1234') }

    it 'converts the plate to uppercase' do
      vehicle.set_uppercase_plate
      expect(vehicle.plate).to eq('ABC-1234')
      expect(vehicle).to be_valid
    end

    it 'does not allow invalid plate format' do
      vehicle.plate = 'abc-1234'
      expect(vehicle).to be_invalid
    end
  end
end
