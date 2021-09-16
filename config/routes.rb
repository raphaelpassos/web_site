Rails.application.routes.draw do
  root 'home#index'
  resources :agencies
  resources :projects
end
