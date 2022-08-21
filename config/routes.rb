Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'lists#index'
  resources :lists, except: %i[index edit update destroy] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: :destroy
end
