Rails.application.routes.draw do

  get 'sessions/new'
  root 'static_pages#home'
  resources :users # or resource :user for singular resources

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
