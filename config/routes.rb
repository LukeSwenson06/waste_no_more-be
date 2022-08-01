Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        get 'users', to: 'users#show'
        namespace :users do
          resources :items, only: [:index], controller: "users_items"
        end
        resources :items, only: [:create, :destroy] 
        resources :users, only: [:create] 
      end
    end
end
