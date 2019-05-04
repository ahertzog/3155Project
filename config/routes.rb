Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy'
  
  resources :sessions, only: [:create, :destroy]
  get 'welcome/index'
  
  resources :clubs do
    resources :meetings
    resources :posts
  end
  
  root 'welcome#index'
  get 'welcome/index'
end