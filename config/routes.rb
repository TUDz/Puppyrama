Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "videos", to: 'videos#index'
  get "videos/new", to: 'videos#new', as: 'new_video'
  get "videos/:id", to: 'videos#show', as: 'show_video'
  get "videos/:id/edit", to: 'videos#edit', as: 'edit_video'
  post "videos", to: 'videos#create'
  patch "videos/:id", to: 'videos#update', as: 'video'
  # Defines the root path route ("/")
  root "videos#index"
end
