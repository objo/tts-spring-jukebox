Rails.application.routes.draw do
  resources :artists
  root 'welcome#index'

  get '/hello' => 'welcome#hello'

  resources :songs
end
