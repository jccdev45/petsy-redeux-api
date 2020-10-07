Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  
  get '/users/:id/items', to: 'users#user_items'
  
  resources :users
  resources :items
end
