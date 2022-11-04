Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "home#index"
  get "home", to: "home#index"

  resources :restaurants , only: [:show, :index, :create, :new] do
    collection do
      get 'search'
      get 'fait'
    end
  end
end
