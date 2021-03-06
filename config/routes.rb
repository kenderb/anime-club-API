Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  get :animes, to: "animes#index"
  resources :animes, only: [:show, :index]
  root to: "static#home"
  resources :favorites, only: [:create, :index, :destroy]
  post :user_favorites, to: "favorites#user_favorites"
end
