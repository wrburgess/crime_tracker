CrimeTracker::Application.routes.draw do
  get "about", to: "static#about"
  get "home", to: "static#home"
  get "legal", to: "static#legal"
  get "support", to: "static#support"
  get "test", to: "static#test"

  resources :cases, only: :index
end
