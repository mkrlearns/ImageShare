Rails.application.routes.draw do

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  resources :image_tags
  resources :tags
  resources :likes
  resources :comments
  resources :users
  resources :images
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
