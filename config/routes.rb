Rails.application.routes.draw do

  root to: "home#top"
  resources :posts
  resources :categories
  resources :users
  get 'login' => "users#login_page"
  post 'login' => "users#login"
  post 'logout' => "users#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
