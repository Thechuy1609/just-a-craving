Rails.application.routes.draw do
  resources :home
resources :products
  root "home#index"
end
