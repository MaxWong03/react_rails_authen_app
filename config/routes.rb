Rails.application.routes.draw do
  get 'concerns/CurrentUserConcern'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create] #create automatically make a post route
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout" #get route to sessions
  get :logged_in, to:"sessions#logged_in" #delete route to sessions, the name (inidicated by the symbol will be the route name which you will define with your function in the controller)
  root to: "static#home"
end
