class RegistrationsController < ApplicationController
  def create
    user = User.new(
      name: params['user']['name'],
      email: params['user']['email'],
      user_type: params['user']['user_type'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation']
    )
    if user.save
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      render json: { status: 500 }
    end
  end
end
