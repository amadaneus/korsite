Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  get 'about', to: 'pages#about'

  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'

  get 'registration', to: 'registrations#new', as: 'new_registration'
  post 'registration', to: 'registrations#create', as: 'create_registration'

  get 'comments/new'

  resources :posts, :categories, :comments

  namespace :admin do
    get 'dashboard', to: 'dashboards#dashboard'
  end

  namespace :admin do
    get 'comments/destroy'
  end

  namespace :admin do
    resources :categories, :comments, :users
    resources :posts do
      member do
        get :toggle_status
        get :feature_post, as: 'feature'
      end
    end
  end

  root to: 'pages#home'

end
