if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_finalproject_api_session', domain: 'tracking-api-ceci.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, key: '_finalproject_api_session'
end
