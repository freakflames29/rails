Rails.application.routes.draw do
  get 'deadpool/home'
  get 'sourav',to: 'deadpool#about'
  get 'deadpool/download'


  get 'crud' ,to:"crud#index", :as=>"index" # as is used for the prefix
  get 'crud/new' ,to: "crud#new" ,:as=>"new"
  # get 'crud/edit', to:"crud#edit", :as=>"edit"
  post 'crud/create', to:"crud#create" 
  get 'crud/edit/:id', to: "crud#edit"

  get 'crud/show/:id', to:"crud#show",:as=>"show"
  delete 'crud/show/:id', to:"crud#destroy"
  put 'crud/show/:id', to:"crud#update"
   
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
