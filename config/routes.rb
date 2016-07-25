Rails.application.routes.draw do
  get "/", to: "home#index", as: :root

  get "/signup", to: "users#new", as: :new_user
  post "/users", to: "users#create"
end

