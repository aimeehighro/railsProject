# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'ingredients/index'
  # get 'ingredients/show'
  # get 'measurements/show'
  # get 'people/show'
  # get 'dishes/index'
  # get 'dishes/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/dishes', to: 'dishes#index'
  get 'dishes/:id', to: 'dishes#show', id: /\d+/
  root to: 'dishes#index'
end
