Rails.application.routes.draw do
  get '/one_recipes_url' => 'recipes#one_recipes_action'

  get '/' => 'recipes#index'
  get '/recipes' => 'recipes#index'

  get '/recipes/new' => 'recipes#new'
  post '/recipes' => 'recipes#create'
  
  get 'recipes/:id/edit' => 'recipes#edit'
  patch 'recipes/:id' => 'recipes#update'

  get '/recipes/:id' => 'recipes#show'


end
