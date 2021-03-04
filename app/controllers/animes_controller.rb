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
  def show
    anime = Anime.find_by(id: params[:id])
    if anime
      render json: {
        status: 200,
        anime: anime,
      }
    end
  end
end
