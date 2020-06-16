Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :artists
  
  # resources :artists, :songs, :genres, only: [:create, :edit, :update, :show]
  # get '/song/create', to: 'song#create'
  
  # get '/song/:id/edit', to: 'songs#edit'

  # patch '/songs/:id', to: 'songs#update'

  # get '/songs/:id/show', to: 'songs#show'

  # get '/genres/create', to: 'genres#create'
  
  # get '/genres/:id/edit', to: 'genres#edit'

  # patch '/genres/:id', to: 'genres#update'

  # get '/genres/:id', to: 'genres#show'

  # get '/artists/create', to: 'artists#create'

  # get '/artists/:id/update', to: 'artists#edit'
  
  # patch '/artists/:id', to: 'artists#update'

  # get '/artists/show', to: 'artists#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
