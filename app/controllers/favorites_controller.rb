class FavoritesController < ApplicationController
  include CurrentUserConcern
  def create
    favorite = Favorite.create!(
      user_id: params["favorite"]["user_id"],
      anime_id: params["favorite"]["anime_id"]
    )
    if favorite
      fivorites_list = User.find(favorite.user_id).favorites
      render json: {
        status: :created,
        fivorites_user_list: fivorites_list
      }
    else
      render json: {status: 500}
    end
  end

  def index
    if @current_user
      favorites = @current_user.favorites
      render json: {
        status: 200,
        favorites: favorites
      }
    else
      render json: {
        logged_in: false
      }
    end
  end
    
end
