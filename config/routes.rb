Rails.application.routes.draw do
  root 'pages#index'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  resources :posts
end
