Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'home/about'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :articles do
    resources :comments
  end
  # get '/articles' => 'articles#index'
  # get '/articles/new' => 'articles#new', as: 'new_article'
  # post '/articles' => 'articles#create', as: 'create_article'
  # get '/articles/edit/:id' => 'articles#edit', as: 'edit_article'
  # patch '/articles/:id' => 'articles#update', as: 'update_article'
  # delete '/articles/:id' => 'articles#delete', as: 'delete_article'

  resources :users 

  root "articles#index"
end
