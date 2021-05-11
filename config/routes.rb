Rails.application.routes.draw do
  root "movies#index"

  get "/movies/:id/title/edit" => "movies#edit_title", as: :edit_title

  resources :characters
  resources :actors
  resources :directors
  resources :movies
end
