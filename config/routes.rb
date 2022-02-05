Rails.application.routes.draw do

  get '/user' ,to:"user#index"
  get '/employee' ,to:"employee#index"
  get '/division' ,to:"division#index"
  get '/team' ,to:"team#index"
  get '/target' ,to:"target#index"
  delete '/target/:id' ,to:"target#destroy"
  delete '/user/:id' ,to:"user#destroy"
  delete '/employee/:id' ,to:"employee#destroy"
  get 'user/new', to: 'user#new', as: 'new_user' # new
  get 'employee/new', to: 'employee#new' # new
  get 'devision/new', to: 'division#new' # new
  get 'teams/new', to: 'team#new' # new


  post 'user/create', to: 'user#create' # new
  post 'employee/create', to: 'employee#create' # new
  post 'devision/create', to: 'devision#create' # new
  post 'teams/create', to: 'teams#create' # new

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

end
