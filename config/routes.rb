Rails.application.routes.draw do
  get 'advertisement/index'

  get 'advertisement/show'

  get 'advertisement/new'

  get 'advertisement/create'

  resources :posts
  resources :advertisement

  get 'about' => 'welcome#about'
  root to: 'welcome#index'

end
