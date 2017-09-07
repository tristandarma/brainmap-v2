Rails.application.routes.draw do

  resources :educourses
  resource :sessions
  devise_for :educators

  resources :home

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
