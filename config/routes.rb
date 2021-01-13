Rails.application.routes.draw do

  get 'sessions/new'
  get 'users/index'
  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'

  root to: 'users#index'

  resources :users
  resources :sessions
end
