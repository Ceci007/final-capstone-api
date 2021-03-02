if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_finalproject-api', domain: 'https://name-of-app.herokuapp.com/'
else
  Rails.application.config.session_store :cookie_store, key: '_finalproject-api'
end
