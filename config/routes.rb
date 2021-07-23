Rails.application.routes.draw do
  resources :article_categories
  resources :categories
  resources :votes
  resources :articles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'categories#index'
end
