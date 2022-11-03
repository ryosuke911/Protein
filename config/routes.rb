Rails.application.routes.draw do
  get '/' => "hello#index"

  get "posts" => "posts#index"

  get "posts/add" => "posts#add"
  post "posts/add" => 'posts#create'

  get "posts/edit/:id" => 'posts#edit'
  patch "posts/edit/:id" => 'posts#update'

  get "posts/delete/:id" => 'posts#delete'
  post "posts/delete/:id" => 'posts#delete'

  get "posts/:id" => 'posts#show'

  get 'accounts/index'
  get 'accounts/show'

  devise_for :accounts
  resources :posts
  resources :accounts

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
