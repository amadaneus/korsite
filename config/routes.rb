Rails.application.routes.draw do

  devise_for :users

  get 'comments/new'

  get 'categories', to: 'categories#index'

  get 'blog', to: 'posts#index'

  get 'posts/show'

  get 'about', to: 'pages#about'

  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'

  get 'registration', to: 'registrations#new', as: 'new_registration'
  post 'registration', to: 'registrations#create', as: 'create_registration'

  resources :posts, :categories, :comments

  namespace :admin do
    get 'sessions/new'
  end

  namespace :admin do
    get 'comments/destroy'
  end

  namespace :admin do
    resources :posts, :categories, :comments, :users
  end

  root to: 'pages#home'

end
