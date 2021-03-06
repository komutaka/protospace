Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :tags, only: [:index, :show], param: :tag_name

  namespace :projects do
    resources :newest, only: :index
    resources :ranking, only: :index
  end

  resources :projects, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :likes, only: [:create, :destroy], module: :projects
    resources :comments, only: :create, module: :projects
  end

  root to: "projects/ranking#index"
end
