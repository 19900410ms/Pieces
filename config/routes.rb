Rails.application.routes.draw do
  devise_for :users
  root to: "contributions#top_page"
  resources :contributions do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
    collection do
      get :top_page
    end
  end
  resources :signup do
    collection do
      get :signup_1
      get :signup_2
      get :done
    end
  end
  resources :users, only: [:show, :update]
end
