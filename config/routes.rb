Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index’

  get 'login', to: 'sessions#new'
  post 'login',  to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  resources :users

end
