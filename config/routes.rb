Rails.application.routes.draw do
  get 'home/index'

  get "/", to: "home#index", as: :root

  resource :users, only: [:new, :create]
end

