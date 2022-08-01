Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        namespace :users do
          resources :items, only: [:index], controller: "users_items"
        end
        resources :items, only: [:create, :destroy] do
        end
        resources :users, only: [:create] do
        end
      end
    end
end
