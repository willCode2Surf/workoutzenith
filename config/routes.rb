Workoutzenith::Application.routes.draw do
  resources :groups, :only => [:index]

  root :to => "home#index"
end
