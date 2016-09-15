Rails.application.routes.draw do

  devise_for :admins, path: "admin"
  devise_for :users
  root "static_pages#home"
  namespace :admin do
    root "home#index"
  end
end
