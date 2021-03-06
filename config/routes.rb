Rails.application.routes.draw do
  devise_for :authors, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  root :to => 'posts#index'
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
