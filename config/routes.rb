Rails.application.routes.draw do
  resources :pfolios

  # get 'pages/about'
  # get 'pages/contact'
  #alternate way
  #get controller/action

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  #we can have custom ones even if we dont have the same file name

  get 'about-me', to: 'pages#about'



  resources :blogs

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
