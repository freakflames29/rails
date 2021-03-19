Rails.application.routes.draw do
  get 'deadpool/home'
  get 'sourav',to: 'deadpool#about'
  get 'deadpool/download'


  # get 'crud' ,to:"cruds#index", :as=>"index" # as is used for the prefix
  # get 'crud/new' ,to: "cruds#new" ,:as=>"new"
  # # get 'crud/edit', to:"crud#edit", :as=>"edit"
  # get 'crud/:id/edit', to: "cruds#edit"

  # get 'crud/:id', to:"cruds#show",:as=>"show"
  # delete 'crud/:id', to:"cruds#destroy"
  # patch 'crud/:id', to:"cruds#update"
  # post 'crud', to:"cruds#create" #create




  # movies routes
  # we are doing as those are url helpers

  get 'movies', to: 'movies#index',:as=>"movies"
  get 'movies/new' ,to: 'movies#new',:as=>"new_movies"

  post 'movies', to:'movies#create' #create 

  get 'movies/:id' ,to:'movies#show',:as=>"movie"

  get 'movies/:id/edit' ,to:'movies#edit',:as=>"edit_movies"
   
  patch 'movies/:id' ,to:'movies#update'
  put 'movies/:id' ,to:'movies#update'
  delete 'movies/:id', to:'movies#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
