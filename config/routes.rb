Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "articles#index"

  resources :user, only: [:edit, :update]
  resources :article, only: [:index, :new, :create, :edit, :show, :update]
end
