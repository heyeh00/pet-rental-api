Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'login', to: 'sessions#login', as: :login

      resources :users, only: %i[create show] do
        resources :bookings, only: %i[index create]
      end

      resources :pets, only: %i[index show create]
    end
  end
end
