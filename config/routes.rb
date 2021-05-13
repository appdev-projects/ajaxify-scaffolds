Rails.application.routes.draw do
  root "movies#index"

  get "/movies/:id/title/edit" => "movies#edit_title", as: :edit_title
  get "/movies/:id/director_id/edit" => "movies#edit_director", as: :edit_director
  get "/movies/:id/description/edit" => "movies#edit_description", as: :edit_description
  get "/movies/:id/image/edit" => "movies#edit_image", as: :edit_image

  patch "/movies/:id/director_id/update" => "movies#update_director"
  patch "/movies/:id/description/update" => "movies#update_description"

  resources :characters
  resources :actors
  resources :directors
  resources :movies
end
