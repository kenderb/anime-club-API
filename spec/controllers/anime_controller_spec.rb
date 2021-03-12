require 'rails_helper'

RSpec.describe AnimesController, type: :controller do
  let!(:anime) { Anime.create!(title: 'anime 1', url_image: 'some url', description: 'some text') }

  describe 'GET /animes' do
    before do
      get :index
    end

    context 'when there are animes' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'GET /animes/:id' do
    before do
      anime
      get :show, params: { id: anime.id }
    end
    context 'when there are animes' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
