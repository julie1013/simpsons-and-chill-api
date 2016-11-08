Rails.application.routes.draw do
  resources :playlists, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  # get '/episodes', to: 'episodes#index'
  # get '/episodes/:id', to: 'episodes#show'
  # patch '/episodes/:id', to: 'episodes#update'
  # resources :
  resources :users, only: [:index, :show]
  resources :episodes, only: [:index, :show, :update]
end
