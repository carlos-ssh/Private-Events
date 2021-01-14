Rails.application.routes.draw do

  get 'sessions/new'
  get 'users/index'

  get 'create-event' => 'events#new', as: 'create-event'

  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'

  root to:'users#index'

  resources :users
  resources :sessions, only: [:create, :destroy, :update]
  resources :events
  resources :enrollments, only: [:create, :destroy, :update]
end
