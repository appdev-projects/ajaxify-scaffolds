Rails.application.routes.draw do
  root "movies#index"

  get "/movies/:id/title/edit" => "movies#edit_title", as: :edit_title
  get "/movies/:id/director_id/edit" => "movies#edit_director", as: :edit_director

  resources :characters
  resources :actors
  resources :directors
  resources :movies
end
