RailsBlog::Application.routes.draw do
  resources :users
  resources :tags
  resources :sessions
  resources :posts do
    resources :comments
  end
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'login', to: 'sessions#create'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  root 'posts#index'
end
