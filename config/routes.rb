Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root 'pages#index'

  get 'resume', to: 'pages#resume'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  resources :posts
  get 'tags/:tag', to: 'posts#index', as: :tag
end
