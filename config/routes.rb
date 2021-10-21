Rails.application.routes.draw do
  resources :qols do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  devise_for :users
  resources :users, only: [:show]
  root 'qols#index'


  
  resources :maps, only: [:index]

end

  


