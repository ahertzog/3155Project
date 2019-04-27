Rails.application.routes.draw do
  get 'welcome/index'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy'
  
  resources :sessions, only: [:create, :destroy]
  get 'welcome/index'
  resources :clubs
  resources :blogs
  
  root 'welcome#index'
end