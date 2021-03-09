require 'rails_helper'

RSpec.describe Anime, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:url_image) }
    it { should validate_presence_of(:title) }
  end
end
