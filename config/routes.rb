Rails.application.routes.draw do


  root 'main#index'

  match 'about', to: 'main#about', via: :get
  match 'hello',to: 'main#hello',via: :get
  get 'main/index'
  get 'main/about'

  match 'categories/add',to: 'categories#add', via: :post
  match 'categories/add_task', to: 'categories#add_task', via: :get
  resources :categories do
    member do
      get :delete
    end
  end
  resources :tasks do
    member do
      get :delete
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
