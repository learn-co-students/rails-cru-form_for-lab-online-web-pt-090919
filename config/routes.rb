Rails.application.routes.draw do
  resources :artists, :songs, :genres, only: [:create, :update, :show]
  get 'song/create', to: 'song#create'

  get 'song/update', to: 'song#update'

  get 'song/show', to: 'song#show'

  get 'genre/create', to: 'genre#create'

  get 'genre/update', to: 'genre#update'

  get 'genre/show', to: 'genre#show'

  get 'artist/create', to: 'artist#create'

  get 'artist/update', to: 'artist#update'

  get 'artist/show', to: 'artist#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
