Rails.application.routes.draw do
  root 'welcome#index'

  get '/hello' => 'welcome#hello'

  get '/songs' => 'songs#list', as: :songs_list
end
