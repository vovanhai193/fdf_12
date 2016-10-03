Rails.application.routes.draw do

  devise_for :admins, path: "admin",
    controllers: {sessions: "admin/sessions"}
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}

  root "static_pages#home"
  namespace :admin do
    root "home#index", path: "/"
    resources :orders, only: [:index, :show, :destroy]
    resources :shop_requests, only: [:index, :update]
    resources :categories
    resources :users
    resources :shops, except: [:new, :create, :show]
  end

  namespace :dashboard do
    root "statistics#index", path: "/"
    resources :shops do
      resources :products
      resources :orders
      resources :shop_managers, only: [:index, :create, :destroy]
    end
    resources :statistics
  end

  resources :shops, only: [:index, :show]
  resources :products, only: [:index, :show] do
    resources :comments, only: :create
  end
  resources :comments, only: :destroy
  resources :carts
  resources :orders
  resources :users, only: :show
  resources :categories do
    resources :products
  end
  resources :tags, only: :show
  get "search(/:search)", to: "searches#index", as: :search
end
