Rails.application.routes.draw do
  root 'static_page#home'
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :illnesses do
          resources :trackings do
            resources :medicines
            resources :symptons
          end
        end
      end
    end
  end
end
