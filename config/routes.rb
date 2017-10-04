Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :blogs

    root to: "users#index"
  end

  get 'home', to: 'home#home'
  
  get 'about', to: 'home#about'

  get 'charges', to: 'charges#new'

  devise_for :users
  resources :blogs
  resources :charges
  
  root to: "blogs#index"
end
