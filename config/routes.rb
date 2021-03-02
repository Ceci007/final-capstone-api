Rails.application.routes.draw do
  root 'static_page#home'
  namespace :api do
    namespace :v1 do
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
      resources :users, only: [:create, :show, :index] do
        resources :illnesses do
          resources :trackings
        end
      end
    end
  end
end
