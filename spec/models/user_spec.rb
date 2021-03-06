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
  describe 'Email validation' do
    it 'decline an incorrect email' do
      user = User.new(name: 'userone', email: 'user one name', password: '123456', password_confirmation: '123456')
      user.save
      expect(user.save).to eq(false)
    end
    it 'accept a correct email' do
      user = User.new(name: 'userone', email: 'kender@mail.com', password: '123456', password_confirmation: '123456')
      expect(user.save).to be(true)
    end
  end
end
