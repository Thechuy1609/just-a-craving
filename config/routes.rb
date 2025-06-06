Rails.application.routes.draw do
devise_for :admins
resources :home
resources :products
resources :locations
resources :contact
  namespace :admin do
    resources :home
  end
  root "home#index"
end
