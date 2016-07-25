Rails.application.routes.draw do
  get "/", to: "links#index", as: :root

  get "/signup", to: "users#new", as: :new_user
  post "/users", to: "users#create"

  get "/login", to: "sessions#new", as: :login
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: :logout

  post "/links", to: "links#create"

  get "/links/:id", to: "links#edit", as: :edit_link
  patch "/links/:id", to: "links#update"

  patch "/api/v1/reads", to: "api/v1/reads#create", as: :mark_read
  patch "/api/v1/unreads", to: "api/v1/unreads#create", as: :mark_unread
end

