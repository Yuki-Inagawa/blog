Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "articles#index"
  get   'users/:id'   =>  'users#show'

  resources :users, only: [:edit, :update]
  resources :articles, only: [:index, :new, :create, :edit, :show, :update, :destroy]
end
