Rails.application.routes.draw do
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"

  get "/secrets", to: "secrets#show", as: "secret"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
