Rails.application.routes.draw do
  root "static_pages#home"
  get "about" => "static_pages#about"
  get "help" => "static_pages#help"
  get "district/show" => "districts#show"
  resources :districts do
    resources :towers
  end

  namespace :admin do
    root "districts#index"
    resources :distrcits
    resources :posts
    resources :towers
  end
end
