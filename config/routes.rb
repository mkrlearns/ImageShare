Rails.application.routes.draw do
  resources :tags
  resources :likes
  resources :comments
  resources :users
  resources :images
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
