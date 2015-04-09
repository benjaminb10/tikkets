Rails.application.routes.draw do
  devise_for :users
  root "tickets#index"
  resources :tickets do
    resources :comments
  end
end
