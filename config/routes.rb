Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  # resources :
  resources :users, only: [:index, :show]
  resources :episodes, only: [:index, :create, :show, :update, :destroy]
  resources :playlists, only: [:index, :create, :show, :update, :destroy]
end
