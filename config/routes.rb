Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root 'pages#index'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  resources :posts
end
