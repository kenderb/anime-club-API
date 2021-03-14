class FavoritesController < ApplicationController
  include CurrentUserConcern
  def create
    favorite = Favorite.create!(
      user_id: params['favorite']['user_id'],
      anime_id: params['favorite']['anime_id']
    )
    if favorite
      fivorites_list = User.find(favorite.user_id).favorites.pluck(:anime_id)
      render json: {
        status: :created,
        fivorites_user_list: fivorites_list,
        params_hash: params
      }
    else
      render json: { status: 500 }
    end
  end

  def user_favorites
    favorites = User.find_by(id: params['user']['id']).favorites.pluck(:anime_id)
    if favorites
      render json: {
        status: 200,
        fivorites_user_list: favorites
      }
    else
      render json: {
        status: 404
      }
    end
  end
end
