Rails.application.routes.draw do
  get 'pages/home'
  get 'posts/new'
  get 'users/new'
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
  resources :posts  # :only => [:new, :create, :edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
