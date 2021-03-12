require 'rails_helper'

RSpec.describe StaticController, type: :controller do
  describe 'GET /' do
    before do
      get :home
    end

    context 'when is root' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
