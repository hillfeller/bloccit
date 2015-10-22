Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end


  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

end
