Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
          resources :merchants, only: [:create] do
        end
      end
    end
end
