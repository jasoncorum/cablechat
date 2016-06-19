Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :chatrooms, only: [:new, :create, :show, :index]
  root 'chatrooms#index'

end
