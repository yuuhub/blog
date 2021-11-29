Rails.application.routes.draw do
  resources :pokemons
  resources :articles
  #get '/articles' => 'articles#index'
  #get '/articles/new' => 'articles#new', as: 'new_article'
  #post '/articles' => 'articles#create', as: 'create_article'

  #get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  #post '/articles' => 'articles#update', as: 'update_article'

  #delete '/articles/:id' => 'articles#delete'
end
