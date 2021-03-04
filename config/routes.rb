Rails.application.routes.draw do
  root 'posts#index'

  resources :posts, only: %i[new show create]

  resources :posts do
    resources :comments
  end
end
