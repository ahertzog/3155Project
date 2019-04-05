Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :clubs
  resources :blogs
  
  root 'welcome#index'
  root 'about#index' #
end
