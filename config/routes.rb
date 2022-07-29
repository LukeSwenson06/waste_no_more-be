Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
          resources :items, only: [:create, :destroy] do
        end
      end
    end
end
