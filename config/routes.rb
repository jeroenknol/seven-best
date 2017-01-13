Rails.application.routes.draw do
  root "pictures#index"
  
  resources :pictures
  resources :users, only: [:show, :edit]
end
