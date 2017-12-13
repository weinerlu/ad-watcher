Rails.application.routes.draw do
  resources :likes
  resources :videos
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/videos', to: 'welcome#index'
  post '/videos/:id/like', to: 'videos#like'
end
