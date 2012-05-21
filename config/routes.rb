Workoutzenith::Application.routes.draw do
  resources :groups

  root :to => "home#index"
end
