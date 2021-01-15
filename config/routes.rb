# frozen_string_literal: true

Rails.application.routes.draw do
    root 'events#index'
  
    get 'signup' => 'users#new', as: 'signup'
    get 'login' => 'sessions#new', as: 'login'
    get 'logout' => 'sessions#destroy', as: 'logout'
  
    resources :users
    resources :sessions, only: %i[new create destroy]
    resources :events
    resources :enrollments, only: %i[create destroy update]
  end