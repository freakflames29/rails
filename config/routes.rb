Rails.application.routes.draw do
  get 'deadpool/home'
  get 'sourav',to: 'deadpool#about'
  get 'deadpool/download'


  get 'crud' ,to:"crud#index", :as=>"index" # as is used for the prefix
  get 'crud/edit', to:"crud#index" :as=>"edit"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
