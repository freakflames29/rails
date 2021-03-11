Rails.application.routes.draw do
  resources :friends
  # get 'home/index'
  root 'home#index'
  get 'home/about'
  get 'home/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
