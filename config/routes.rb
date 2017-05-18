Rails.application.routes.draw do
  get '/one_recipes_url' => 'recipes#one_recipes_action'

  get '/' => 'recipes#index'
  get '/recipes' => 'recipes#index'

  get '/recipes/new' => 'recipes#new'
  post '/recipes' => 'recipes#create'
  
  get '/recipes/:id' => 'recipes#show'

  get 'recipes/:id/edit' => 'recipes#edit'
  patch 'recipes/:id' => 'recipes#update'

  delete '/recipes/:id' => 'recipes#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
