Rails.application.routes.draw do
  devise_for :users
  root to: "contributions#index"
  resources :contributions
  resources :user, only: :show
end
