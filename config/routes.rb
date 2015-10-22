Rails.application.routes.draw do

  resources :posts

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end
