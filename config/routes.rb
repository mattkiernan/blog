Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root "posts#index"

  resources :posts, only: [:index]
end
