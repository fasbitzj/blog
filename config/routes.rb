Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :people
  resources :users

  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"
  # root :to => "welcome#index"

  root 'static_pages#home'
  get  '/static_pages/home'
  get  '/help', to: 'static_pages#help'
  get  '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
end
