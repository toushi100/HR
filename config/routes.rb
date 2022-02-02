Rails.application.routes.draw do

  get '/user' ,to:"user#index"
  get '/employee' ,to:"employee#index"
  get '/division' ,to:"division#index"
  get '/team' ,to:"team#index"
  get '/target' ,to:"target#index"
  delete '/target/destroy/:id' ,to:"target#destroy",as: 'button'
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

end
