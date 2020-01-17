Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create] #create automatically make a post route
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout" #get route to sessions
  #delete route to sessions
  #the name (inidicated by the symbol will be the route name which you will define with your function in the controller and accessible as an end point)
  #to: allows you to internally dispatch the request to a certain controller's action
  get :logged_in, to:"sessions#logged_in"
  root to: "static#home"
end
