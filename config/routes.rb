Rails.application.routes.draw do
  devise_for :users

  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

  authenticated :user do
    root to: 'todo_lists#index', as: :authenticated_root
  end

  unauthenticated do
    root 'static_pages#index'
  end
end
