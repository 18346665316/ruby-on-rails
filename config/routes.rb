Rails.application.routes.draw do
  resources :users
  get 'users/new'

  # get 'static_pages/home'
  #
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  get '/home',to: "static_pages#home"
  get '/about', to:'static_pages#about'
  get '/help', to:'static_pages#help'
  get '/contact', to:'static_pages#contact'
  get '/signup', to:'users#new'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
end
