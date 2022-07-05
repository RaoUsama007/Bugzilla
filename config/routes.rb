Rails.application.routes.draw do
  root 'home#index'
  resources :bugs
  resources :projects
  devise_for :users
end
