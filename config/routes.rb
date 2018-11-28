Rails.application.routes.draw do
  resources :entries
  resources :habits
  # post '/habits', to: "habits#create"
  get '/currentuser', to: "auth#show"
  resources :users
    post '/login', to: "auth#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
