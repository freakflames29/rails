Rails.application.routes.draw do
  # get 'deadpool/home'
  # get 'sourav',to: 'deadpool#about'
  # get 'deadpool/download'

  root 'mains#index'

  # registrations routes
  get 'signup', to:'registrations#new'
  post 'signup', to:'registrations#create'

  # logout routes
  delete 'logout', to:'sessions#destroy'

  #login routes

  get 'login',to:'sessions#new'
  post 'login',to:'sessions#create'

  #edit password
  get 'password', to:'passwords#edit',as: :edit_password # for showing password edit field
  patch 'password', to:'passwords#update' # for updating the password
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
