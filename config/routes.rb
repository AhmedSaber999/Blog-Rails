# 
Rails.application.routes.draw do
  root 'home#index'
  resources :articales
  get 'signup', to: 'users#new'
end
