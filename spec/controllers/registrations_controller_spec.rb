require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  describe 'POST /registrations' do
    before do
      post :create, params: {
        user: {
          name: 'kender 02',
          email: 'mail@mail.com',
          password: '123456',
          password_confirmation: '123456',
          user_type: 'user'
        }
      }
    end

    context 'when user is created' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'POST /registrations' do
    before do
      post :create, params: {
        user: {
          name: '',
          email: 'mailmail.com',
          password: '123456',
          password_confirmation: '123456',
          user_type: 'user'
        }
      }
    end

    context 'when user is created incorrectly' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
