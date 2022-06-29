Rails.application.routes.draw do
  resources :bugs
  resources :projects
  devise_for :users
end
