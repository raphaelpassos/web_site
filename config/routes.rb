Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  resources :agencies
  resources :projects
end
