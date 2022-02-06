Rails.application.routes.draw do

  get '/user' ,to:"user#index"
  get '/employee' ,to:"employee#index"
  get '/division' ,to:"division#index"
  get '/team' ,to:"team#index"
  get '/target' ,to:"target#index"

  delete '/target/:id' ,to:"target#destroy"
  delete '/user/:id' ,to:"user#destroy"
  delete '/employee/:id' ,to:"employee#destroy"
  delete '/team/:id' ,to:"team#destroy"
  delete '/division/:id' ,to:"division#destroy"


  get 'user/new', to: 'user#new', as: 'new_user' # new
  get 'employee/new', to: 'employee#new' # new
  get 'division/new', to: 'division#new' # new
  get 'team/new', to: 'team#new' # new
  get 'target/new', to: 'target#new' # new


  post 'user/create', to: 'user#create' # new
  post 'employee/create', to: 'employee#create' # new
  post 'division/create', to: 'division#create' # new
  post 'team/create', to: 'team#create' # new
  post 'target/create', to: 'target#create' # new


  get 'user/:id' ,to:"user#show"
  get 'employee/:id' ,to:"employee#show"
  get 'division/:id' ,to:"division#show"
  get 'target/:id' ,to:"target#show"
  get 'team/:id' ,to:"team#show"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

end
