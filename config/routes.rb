Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :labels, only: [:show]

end
