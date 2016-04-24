Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  namespace :projects do
    resources :newest, only: :index
    resources :ranking, only: :index
  end
  resources :projects, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :likes, only: [:create, :destroy], module: :projects
  end
  root to: "projects/ranking#index"
end
