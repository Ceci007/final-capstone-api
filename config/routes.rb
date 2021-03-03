Rails.application.routes.draw do
  root 'static_page#home'
  post '/login', to: 'sessions#create'
  post '/createill', to: 'illnesses#create'
  post '/createday', to: 'trackings#create'
  patch '/updateill', to: 'illnesses#update'
  patch '/updateday', to: 'trackings#update'
  delete '/logout', to: 'sessions#destroy'
  delete '/deleteill', to: 'illnesses#destroy'
  delete '/deleteday', to: 'trackings#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users, only: %i[create show index] do
    resources :illnesses do
      resources :trackings
    end
  end
end
