Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  namespace :admin do
    resources :products
    resources :pages
    resources :pp1s do
      resources :pp1as
    end
  end

  namespace :customer do
    resources :products do
      resources :pp1s do
        resources :pp1as
      end
    end
  end

  resources :products do
    resources :pp1s do
      member do
        post :add_to_cart
      end
    end
    member do
      post :add_to_cart
    end
  end


  # resources :pp1s do
  #  member do
  #    post :add_to_cart
  #  end
  # end

  get 'test' => 'pp1#test'

  resources :carts do
    collection do
      delete :clean
    end
  end

  resources :cart_items
end
