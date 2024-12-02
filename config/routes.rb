Rails.application.routes.draw do
  devise_for :admins
  resources :collections do
    resources :plates
  end
  resources :invoices
  get 'admins/index'
  root 'home#index'
end
