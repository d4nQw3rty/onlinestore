Rails.application.routes.draw do
  resources :categories, except: :show
  resources :products, path: '/'

  namespace :authentication, path: '', as: '' do
    resources :users, only: %i[new create]
    resources :sessions, only: %i[new create destroy]
  end
end
