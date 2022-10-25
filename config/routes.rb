Rails.application.routes.draw do
  resources :time_entries
  resources :visits
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#home"

  get "/book-now" => "visits#new"
  get "/job-board" => "visits#index"
  get "/account" => "application#account"
end
