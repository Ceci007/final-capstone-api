if Rails.env.match?('production')
  Rails.application.config.session_store :cookie_store, {
    key: '_finalproject_api_session',
    domain: 'tracking-api-ceci.herokuapp.com',
    same_site: :none,
    secure: true,
    tld_length: 2
  }
else
  Rails.application.config.session_store :cookie_store, {
    key: '_finalproject_api_session',
    domain: :all,
    same_site: :none,
    secure: true,
    tld_length: 2
  }
end
