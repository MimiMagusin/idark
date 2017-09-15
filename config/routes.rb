Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'catalogues#index'

  resources :users, only: [:show]
  resources :profiles, except: [:destroy]

  resources :catalogues, only: [:show, :index] do
    resources :products, only: [:show]
  end

end
