Rails.application.routes.draw do
  api_version(:module => "V1", :path => { :value => "v1" }) do
    resources :books
  end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    get 'get_posts', to: 'users#get_posts', as: :user_posts
    get 'get_posts_body', to: 'users#get_posts_body', as: :users_posts_body
    get 'get_address'
    resources :posts, only: []
  end
  resources :addresses, only: [:index, :show] do
    get 'get_user'
  end
  get 'addresses/find_by_street', to: 'addresses#find_by_street', as: :address_street
end