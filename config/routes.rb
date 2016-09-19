Rails.application.routes.draw do

  devise_for :admins, path: "admin"
  devise_for :users

  root "static_pages#home"
  namespace :admin do
    root "home#index"
    resources :orders, only: [:index, :show, :destroy]
    resources :shop_requests, only: [:index, :update]
    resources :categories
  end

  resources :shops do
    resources :products, only: :index
  end
end
