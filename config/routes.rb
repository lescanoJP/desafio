Rails.application.routes.draw do
  devise_for :users
  root :to => "home#index" 
  resources :searches
  resources :wishes  
  resources :watchedmovies
end