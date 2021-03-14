if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, {
    :key => '_anime_club_app',
    :domain => "evening-eyrie-51515.herokuapp.com",
    :same_site => :none,
    :secure => :true,
    :tld_length => 2
  }
else
  Rails.application.config.session_store :cookie_store, {
    :key => '_anime_club_app',
    :domain => :all,
    :same_site => :none,
    :secure => :true,
    :tld_length => 2
  }
  
end