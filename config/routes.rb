Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "sessions#new"
  post "/", to: "sessions#create"
  get "/", to: "sessions#show", as: "session"
  delete "/", to: "sessions#destroy"
  get "/secrets", to: "secrets#show", as: "secret" 
end
