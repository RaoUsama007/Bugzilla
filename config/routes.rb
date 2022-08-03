Rails.application.routes.draw do
  root 'homes#index'
  resources :bugs
  resources :projects
  devise_for :users
end
