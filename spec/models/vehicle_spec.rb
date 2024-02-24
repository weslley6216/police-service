require 'rails_helper'

describe Vehicle, type: :model do
  describe 'associations' do
    it { should belong_to(:policy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:brand) }
    it { should validate_presence_of(:model) }
    it { should validate_presence_of(:year) }
    it { should validate_presence_of(:plate) }
  end
end
