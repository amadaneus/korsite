Rails.application.routes.draw do

  get 'about', to: 'pages#about'

  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'

  get 'registration', to: 'registrations#new', as: 'new_registration'
  post 'registration', to: 'registrations#create', as: 'create_registration'

  root to: 'pages#home'

end
