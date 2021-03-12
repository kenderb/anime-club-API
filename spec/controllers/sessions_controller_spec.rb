require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let!(:user) do
    User.create!(name: 'userone', email: 'kender@mail.com', password: '123456', password_confirmation: '123456')
  end
  describe 'POST  /sessions' do
    before do
      user
      post :create, params: {
        user: {
          email: user.email,
          password: user.password
        }
      }
    end

    context 'when user is logged in' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'get  /sessions' do
    before do
      user
      post :create, params: {
        user: {
          email: user.email,
          password: user.password
        }
      }
      get :logged_in
    end

    context 'when user is logged in' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
  describe 'delete  /logout' do
    before do
      user
      post :create, params: {
        user: {
          email: user.email,
          password: user.password
        }
      }
      delete :logout
    end

    context 'when user is logged out' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
