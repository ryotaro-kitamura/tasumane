Rails.application.routes.draw do

  resources :home
  root 'home#top'


  get "login" => "users#login_form"
  post "login" => "users#login"
  post "/logout" => "users#logout"

  get 'users/index'

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "users/index" => "users#index"
  get "users/new" => "users#new"
  get "users/:id" => "users#show"
  post "users/create" => "users#create"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  post "users/:id/destroy" => "users#destroy"
  get "users/:id/likes" => "users#likes"

  post "likes/:record_id/create" => "likes#create"
  post "likes/:record_id/destroy" => "likes#destroy"



  get "/" => "home#top"
  get "about" => "home#about"
end
