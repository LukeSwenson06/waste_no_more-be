Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        get 'users', to: 'users#show'
          resources :items, only: [:create] do
        end
          resources :users, only: [:create] do
        end
      end
    end
end
