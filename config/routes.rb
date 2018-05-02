Rails.application.routes.draw do
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :people

  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"
  # root :to => "welcome#index"

  root 'static_pages#home'
  get  '/static_pages/home'
  get  '/home', to: 'static_pages#home'
  get  '/help', to: 'static_pages#help'
  get  '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

end
