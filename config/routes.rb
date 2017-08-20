Rails.application.routes.draw do
  devise_for :users
  resources :restaurants, only: [ :index, :show, :destroy ] do
    resources :reviews, only: :create
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  end
end
