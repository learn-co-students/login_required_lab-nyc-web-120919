Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #sessions/login routes
  get '/login', to: "sessions#new"
  get '/login/:id', to: "sessions#show", as: "logged_in"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"


  #secrets controller
  get '/secrets', to: "secrets#show"
end
