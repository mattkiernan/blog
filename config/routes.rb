Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root "posts#index"

  resources :posts

  resource :portfolio, only: [:show]

  resource :about, only: [:show]

  get "pages/:permalink", to: "pages#show", as: "page"
end
