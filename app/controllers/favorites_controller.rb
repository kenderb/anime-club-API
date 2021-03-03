class FavoritesController < ApplicationController
  include CurrentUserConcern

  def create
    
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