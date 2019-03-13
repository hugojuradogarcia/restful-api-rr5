Rails.application.routes.draw do
  api_version(:module => "V1", :path => { :value => "v1" }) do
    resources :books
  end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get '/users/:id/posts/', to: 'users#get_posts', as: :user_posts
  get '/users/:id/posts_body/', to: 'users#get_posts_name', as: :users_posts_body
end