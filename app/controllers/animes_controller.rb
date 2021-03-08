class AnimesController < ApplicationController
  def index
    animes = Anime.all
    render json: { status: 200, anime_list: animes } if animes
  end

  def show
    anime = Anime.find_by(id: params[:id])
    render json: { status: 200, nime: anime } if anime
  end
end
