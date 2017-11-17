Rails.application.routes.draw do
    namespace :admin do
    devise_for :users, class_name: "Admin::User", controllers: { sessions: 'admin/sessions' }
    resources :posts
    get 'dashboard', to: 'dashboard#index'
    root 'dashboard#index'
  end

  resources :posts, only: [:show, :index]
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
