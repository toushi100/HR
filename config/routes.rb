Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

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


  post 'user/:id/update', to: 'user#update' # new
  post 'user.:id/', to: 'user#update' # new
  post 'employee/:id/update', to: 'employee#update' # new
  post 'division/:id/update', to: 'division#update' # new
  post 'team/:id/update', to: 'team#update' # new
  post 'target/:id/update', to: 'target#update' # new


  get 'user/:id/edit' ,to:"user#edit"
  get 'employee/:id/edit' ,to:"employee#edit"
  get 'division/:id/edit' ,to:"division#edit"
  get 'target/:id/edit' ,to:"target#edit"
  get 'team/:id/edit' ,to:"team#edit"




  get 'user/:id' ,to:"user#show"
  get 'employee/:id' ,to:"employee#show"
  get 'division/:id' ,to:"division#show"
  get 'target/:id' ,to:"target#show"
  get 'team/:id' ,to:"team#show"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

end
