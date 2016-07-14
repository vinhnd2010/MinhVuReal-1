Rails.application.routes.draw do
  root "static_pages#home"
  get "about" => "static_pages#about"
  get "help" => "static_pages#help"
  get "district/show" => "districts#show"
  resources :districts, only: [:index, :show]
end
