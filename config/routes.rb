Rails.application.routes.draw do
devise_for :admins
resources :home
resources :products
resources :locations
resources :contact
  namespace :admin do
    resources :home
    resources :products
    resources :locations
    resources :messages
  end
  root "home#index"
end
