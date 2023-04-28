Rails.application.routes.draw do
  
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
 
  resources :posts do
    resources :likes
  end 

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
