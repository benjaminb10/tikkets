Rails.application.routes.draw do
  get 'activities/index'

  root 'tickets#index'

  devise_for :users
  resources :users
  resources :tickets do
    resources :comments
  end

  resources :activities
end