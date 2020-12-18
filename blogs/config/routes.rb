Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
  get 'users/sign_in'
  get 'articles/show'
 

  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"

  #INICIAMOS CRUD
  get 'articles/:id' => 'articles#show'
  get 'articles/:id/edit', to: 'articles#edit'
  put "articles/:id" => "articles#update"
  patch 'articles/:id', to: 'articles#update', as: :article 
  delete 'articles/:id', to: 'articles#destroy'

  root to: 'articles#index'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
