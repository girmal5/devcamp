Rails.application.routes.draw do
  #bring all the resource routes for pfolios except show
  resources :pfolios, except: [:show]

  get 'pfolio/:id', to: 'pfolios#show', as: 'pfolio_show'
  get 'angularsorted', to: 'pfolios#angular'

  # get 'pages/about'
  # get 'pages/contact'
  #alternate way
  #get controller/action

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  #we can have custom ones even if we dont have the same file name

  get 'about-me', to: 'pages#about'
  get 'reachus', to: 'pages#contact'



  resources :blogs do
    member do
      get :toggle_status
  end
end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
