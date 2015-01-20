Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root "portfolios#show"

  resources :posts, path: "blog"

  resource :portfolio, only: [:show]

  resource :about, only: [:show]

  resource :resume, only: [:show, :edit]

end
