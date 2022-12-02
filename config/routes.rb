Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'login', to: 'sessions#login', as: :login

      resources :users, only: %i[create show update] do
        resources :bookings, only: %i[index create destroy]
      end

      resources :pets, only: %i[index show]

      resources :users, only: :show do
        resources :pets, only: %i[index show create update destroy]
      end
    end
  end
end
