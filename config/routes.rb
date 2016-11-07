Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/episodes', to: 'episodes#index'
  get '/episodes/:id', to: 'episodes#show'
  resources :users, only: [:index, :show]
end
