Rails.application.routes.draw do
  root "movies#index"

  resources :characters
  resources :actors
  resources :directors
  resources :movies do
    get "title/edit" => "movies#edit_title", as: :edit_title
    get "year/edit" => "movies#edit_year", as: :edit_year
    get "director/edit" => "movies#edit_director", as: :edit_director
    get "duration/edit" => "movies#edit_duration", as: :edit_duration
  end
end
