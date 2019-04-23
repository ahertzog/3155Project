Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy'
  
  resources :sessoins, only[:create, :destroy]
  resources :clubs
  resources :blogs
  
  root 'welcome#index'
  root 'about#index'
end
