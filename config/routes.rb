Rails.application.routes.draw do
  root "movies#index"

  


  resources :characters
  resources :actors
  resources :directors
  resources :movies

  get("/edit_year", { :controller => "movies", :action => "edit_year" })


end
