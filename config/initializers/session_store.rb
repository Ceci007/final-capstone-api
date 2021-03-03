if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_finalproject_api_session', domain: 'my-domain'
else
  Rails.application.config.session_store :cookie_store, key: '_finalproject_api_session'
end
