Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  
  resources :books do 
    resources :reviews
  end
 root "books#new"
end
