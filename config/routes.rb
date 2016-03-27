Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :projects, only: [:create]
  root to: "projects#index"
end
