Rails.application.routes.draw do
  root "movies#index"

  resources :characters
  resources :actors
  resources :directors
  resources :movies


  get '/movies/:id/:field/edit', to: 'movies#edit_field'


end
