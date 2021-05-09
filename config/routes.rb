Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users
  resources :items do
   resources :buyings, only:[:index, :create, :new]
  end
end
