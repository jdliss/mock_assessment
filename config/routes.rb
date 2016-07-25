Rails.application.routes.draw do
  get "/", to: "links#index", as: :root

  get "/signup", to: "users#new", as: :new_user
  post "/users", to: "users#create"

  get "/login", to: "sessions#new", as: :login
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: :logout

  post "/links", to: "links#create"

  post "/read/:id", to: "links#mark_read", as: :mark_read
  post "/unread/:id", to: "links#mark_unread", as: :mark_unread

  get "/links/:id", to: "links#edit", as: :edit_link
  patch "/links/:id", to: "links#update"
end

