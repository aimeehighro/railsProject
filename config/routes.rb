# frozen_string_literal: true

Rails.application.routes.draw do
  get 'static_pages/about'
  # get 'ingredients/index'
  # get 'ingredients/show'
  # get 'measurements/show'
  # get 'people/show'
  # get 'dishes/index'
  # get 'dishes/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/dishes', to: 'dishes#index'
  # get 'dishes/:id', to: 'dishes#show', id: /\d+/

  resources :dishes, only: %i[index show]
  resources :people, only: %i[index show]
  resources :ingredients, only: %i[index show]
  resources :measurements, only: %i[index show]
  root to: 'dishes#index'
end
