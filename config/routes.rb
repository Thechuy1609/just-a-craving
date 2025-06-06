Rails.application.routes.draw do
devise_for :admins
resources :home
resources :products
resources :locations
resources :contact
  root "home#index"
end
