Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "videos", to: 'videos#index'
  get "videos/new"
  get "videos/:id", to: 'videos#show', as: 'show_video'
  post "videos", to: 'videos#create'
  # Defines the root path route ("/")
  root "videos#index"
end
