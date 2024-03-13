Rails.application.routes.draw do
  
  root to: 'homes#top'
  get "/about"=>"homes#about", as: 'about'
  
  scope module: :public do
    get 'customers/mypage' => 'customers#show'
    get 'customers/information/edit' => 'customers#edit'
    patch 'customers/information' => 'customers#update'
    resources :comments, only: [:index, :create, :destroy]
    resources :shops, only: [:new, :index, :show, :create, :destroy]
    resources :fish, only: [:index]
  end
  
  namespace :admin do
    resources :comments, only: [:index, :destroy]
    resources :shops, only: [:index, :destroy]
    resources :fish, only: [:new, :index, :show, :edit, :create, :update, :destroy]
    resources :customers, only: [:index, :show, :edit, :update]
  end
  
  devise_for :customers, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  
  devise_for :admin, controllers: {
  sessions: "admin/sessions"
  }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
