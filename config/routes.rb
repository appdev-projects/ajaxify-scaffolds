Rails.application.routes.draw do
  root "movies#index"

  resources :characters do
    get "actor_id", as: :edit_actor_id
    get "movie_id", as: :edit_movie_id
  end

  resources :actors do
    get "name/edit", as: :edit_name
    get "bio/edit", as: :edit_bio
    get "dob/edit", as: :edit_dob
  end

  resources :directors do
    get "name/edit", as: :edit_name
    get "bio/edit", as: :edit_bio
    get "dob/edit", as: :edit_dob
  end

  resources :movies do
    get "title/edit" => "movies#edit_title", as: :edit_title
    get "description/edit" => "movies#edit_description", as: :edit_description
    get "duration/edit" => "movies#edit_duration", as: :edit_duration
    get "year/edit" => "movies#edit_year", as: :edit_year
    get "director_id/edit" => "movies#edit_director_id", as: :edit_director_id
  end
end
