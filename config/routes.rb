Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :products do
    resources :comments
  end

  post 'static_pages/thank_you'

  get '/products/:id', to: 'products#show'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/landing_page'

	root 'static_pages#index'

  resources :orders, only: [:index, :show, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
