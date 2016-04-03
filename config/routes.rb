Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :projects, only: [:new]
  root to: "projects#index"
end
