Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :illnesses
      end
    end
  end
end
