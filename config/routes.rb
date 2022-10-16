Rails.application.routes.draw do
  resources :visits
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"

  get "/book-now" => "visits#new"
  get "/job-board" => "visits#index"
end
