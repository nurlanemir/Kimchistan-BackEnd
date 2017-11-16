Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
      mount Stripe::Engine => '/stripe'
      resources :products, only: [:index]
      resources :orders, only: [:create]
      resources :restaurants, only: [:index]
      resources :payments, only: [:create]
    end
  end
end
