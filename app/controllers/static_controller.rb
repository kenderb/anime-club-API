class StaticController < ApplicationController
  def home
    render json: { status: 'ok' }
  end
end
