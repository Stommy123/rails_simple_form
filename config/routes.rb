Rails.application.routes.draw do
  devise_for :users
  resources :forms
  devise_scope :user do
    authenticated :user do
      root 'forms#index', as: :authenticated_root
    end
    unauthenticated do
      root 'forms#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
