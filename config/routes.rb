Rails.application.routes.draw do
  resources :portfolios
  get 'deadpool/home'
  get 'sourav',to: 'deadpool#about'
  get 'deadpool/download'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
