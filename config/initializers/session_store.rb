if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_anime_club_app", domain: "anime-rails-api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_anime_club_app"
  
end