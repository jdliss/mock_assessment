Rails.application.routes.draw do
  get 'users/new'

  get 'user/new'

  get 'user/create'

  get "/", to: "home#index", as: :root
end
