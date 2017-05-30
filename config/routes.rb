Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :products

    resources :pages

    resources :pp1s do
      resources :pp1as
    end

  end

  root 'welcome#index'

  resources :products

  resources :pp1s do
    member do
      post :add_to_cart
    end
  end

  get 'test' => 'pp1#test'

end
