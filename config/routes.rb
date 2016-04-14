Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :projects, only: [:new, :create, :show]
  namespace :projects do
    resources :newest, :ranking, module: 'projects'
  end
  root to: "projects/ranking#index"
end
