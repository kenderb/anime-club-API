require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:favorites) }
  end
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
end
