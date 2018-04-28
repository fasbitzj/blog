Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :people

  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"
  # root :to => "welcome#index"

  get 'static_pages/home'
  # get 'static_pages/help'
  get '/help', to: 'static_pages#help'
  get 'static_pages/about'
  root 'static_pages#home'
  get 'static_pages/contact'
end
