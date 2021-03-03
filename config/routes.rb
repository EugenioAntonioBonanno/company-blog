Rails.application.routes.draw do
  get 'comments/create'
  root 'posts#index'

  resources :posts, only: %i[new show create]
end
