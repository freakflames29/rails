Rails.application.routes.draw do
  # get 'pages/index'
  root 'pages#index'
  get 'sourav' , to:'pages#about'
  get 'pages/contact'
  get 'pages/dodo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
