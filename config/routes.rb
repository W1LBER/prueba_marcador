Rails.application.routes.draw do
  get 'api/category', to: 'api#index'
  resources :bookmarks
  resources :types
  resources :subcategories
  resources :categories

  root 'bookmarks#index'
end
