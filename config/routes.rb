Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  root "users#new"
  resources :users, only: [:edit, :update]
end
