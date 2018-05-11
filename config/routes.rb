Rails.application.routes.draw do
  resources :trainers
  resources :clients
  resources :workouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "clients/profile/:id" => "clients#profile"
  get "trainers/profile/:id" => "trainers#profile"
  post 'workouts/find' => 'workouts#find'
  post 'clients/find' => 'clients#find'
  post 'trainers/find' => 'trainers#find'
end
