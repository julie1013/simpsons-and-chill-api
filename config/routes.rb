Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/episodes', to: 'episodes#index'
  post '/episodes', to: 'episodes#create'
  get '/episodes/:id', to: 'episodes#show'
  patch '/episodes/:id', to: 'episodes#update'
  delete '/episodes/:id', to: 'episodes#destroy'
  post '/playlists', to: 'playlists#create'
  get '/playlists/:id', to: 'playlists#show'
  patch '/playlists/:id', to: 'playlists#update'
  delete '/playlists/:id', to: 'playlists#destroy'
  # resources :
  resources :users, only: [:index, :show]
  resources :episodes, only: [:index, :create, :show, :update, :destroy]
  resources :playlists, only: [:index, :create, :show, :update, :destroy]
end
