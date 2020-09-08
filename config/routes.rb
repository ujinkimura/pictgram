#Rails.application.routes.draw do
 # get 'topics/new'
  #get 'sessions/new'
  #get 'users/new'
  #get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#end
Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :topics
end
