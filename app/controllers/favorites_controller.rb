class FavoritesController < ApplicationController
  include CurrentUserConcern
  def create
    favorite = Favorite.create!(
      user_id: params["favorite"]["user_id"],
      anime_id: params["favorite"]["anime_id"]
    )
    if favorite
      fivorites_list = User.find(favorite.user_id).favorites.pluck(:anime_id)
      render json: {
        status: :created,
        fivorites_user_list: fivorites_list
      }
    else
      render json: { status: 500 }
    end
  end

  def index
    if @current_user
      favorites = @current_user.favorites.pluck(:anime_id)
      render json: {
        logged_in: true,
        fivorites_user_list: favorites
      }
    else
      render json: {
        logged_in: false
      }
    end
  end
    
end
