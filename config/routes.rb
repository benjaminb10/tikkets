Rails.application.routes.draw do
  root "tickets#index"
  resources :tickets do
    resources :comments
  end
end
