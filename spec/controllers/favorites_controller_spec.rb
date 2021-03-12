require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do
  let!(:user) do
    User.create!(name: 'userone', email: 'kender@mail.com', password: '123456', password_confirmation: '123456')
  end
  let!(:anime) { Anime.create!(title: 'anime 1', url_image: 'some url', description: 'some text') }
  let!(:favorite) { Favorite.create!(user_id: user.id, anime_id: anime.id) }

  describe 'POST /favorites' do
    before do
      user
      get :create, params: { favorite: { user_id: user.id, anime_id: 5 } }
    end
    context 'when there are favorite' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'POST /user_favorites' do
    before do
      user
      anime
      favorite
      post :user_favorites, params: { user: { id: user.id } }
    end

    context 'when there are favorites' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
