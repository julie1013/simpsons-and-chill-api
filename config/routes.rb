Rails.application.routes.draw do
  resources :queuings, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/episodes', to: 'episodes#index'
  get '/episodes/:id', to: 'episodes#show'
  patch '/episodes/:id', to: 'episodes#update'
  get '/playlists', to: 'playlists#index'
  resources :users, only: [:index, :show]
  resources :episodes, only: [:index, :show, :update]
  resources :playlists, only: [:index, :create, :show, :update]
end
