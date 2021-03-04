class AnimesController < ApplicationController
  def index
    animes = Anime.all
    if animes
      render json: {
        status: 200,
        anime_list: animes
      }
    else
      render json: {status: 401}
    end
    
  end
end
