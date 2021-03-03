class FavoritesController < ApplicationController
  include CurrentUserConcern

  def create
    favorite = Favorite.create!(
      user_id: @current_user.id,
      anime_id: params["favorite"]["id"]
    )
    if favorite
      render json: {
        status: :created,
        user: favorite
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