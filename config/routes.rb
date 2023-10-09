Rails.application.routes.draw do
  resources :categories, except: :show
  resources :products, path: '/'

  namespace :authentication do
    resources :users, only: %i[new create]
  end
end
