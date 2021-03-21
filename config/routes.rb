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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
