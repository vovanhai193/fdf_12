Rails.application.routes.draw do

  devise_for :admins, path: "admin",
    controllers: {sessions: "admin/sessions"}
  devise_for :users

  root "static_pages#home"
  resources :shops
  namespace :admin do
    root "home#index"
    resources :orders, only: [:index, :show, :destroy]
    resources :shop_requests, only: [:index, :update]
    resources :categories
    resources :users
    resources :shops, except: [:new, :create, :show]
  end

  namespace :dashboard do
    root "home#index"
    resources :shops do
      resources :products
      resources :orders
    end
  end

  resources :shops, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :carts
  resources :orders
end
