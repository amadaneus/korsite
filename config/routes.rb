Rails.application.routes.draw do

  get 'about', to: 'pages#about'

  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'

  root to: 'pages#home'

end
