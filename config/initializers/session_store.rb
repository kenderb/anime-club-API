if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_anime_club_app", domain: "Domain for the API APP"
else
  Rails.application.config.session_store :cookie_store, key: "_anime_club_app"
end