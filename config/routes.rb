Rails.application.routes.draw do
  resources :books
  resources :tags
  resources :book_tags
  get 'pages/index'
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  root to: 'books#index'
  devise_scope :user do
    get "signup", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
    get '/search' => 'pages#search', :as => 'search_page'
  end
end

