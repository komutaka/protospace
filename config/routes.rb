Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  namespace :projects do
    resources :newest, only: :index
    resources :ranking, only: :index
  end
  resources :projects, only: [:new, :create, :show, :edit, :update, :destroy]
  root to: "projects/ranking#index"
end
