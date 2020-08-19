Rails.application.routes.draw do
  devise_for :users
  #get 'users/index'
  root "items#index"
  resources :users, only: [:edit, :update, :create]
end
