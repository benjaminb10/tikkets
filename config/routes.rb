Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'

  get 'activities/index' # , protect_from_forgery :except => :index

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