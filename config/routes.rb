Rails.application.routes.draw do
devise_for :admins
resources :home
resources :products
resources :locations
  root "home#index"
end
