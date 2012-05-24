Workoutzenith::Application.routes.draw do
  resources :exercises

  resources :groups, :only => [:index]

  root :to => "home#index"
end
