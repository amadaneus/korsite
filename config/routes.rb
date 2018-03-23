Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  get 'about', to: 'pages#about'

  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'

  get 'registration', to: 'registrations#new', as: 'new_registration'
  post 'registration', to: 'registrations#create', as: 'create_registration'

  get 'comments/new'

  delete 'delete_user_registration', to: 'devise/registrations#destroy'

  resources :posts, :categories, :comments

  namespace :admin do
    get 'sessions/new'
    get 'dashboard', to: 'dashboards#dashboard'
  end

  namespace :admin do
    get 'comments/destroy'
  end

  namespace :admin do
    resources :posts, :categories, :comments, :users
  end

  root to: 'pages#home'

end
