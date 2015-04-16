Rails.application.routes.draw do
  get 'activities/index'

  root 'tickets#index'

  devise_for :users
  resources :users do
    resources :tickets
  end
  
  resources :tickets do
    resources :comments
  end

  resources :activities
end