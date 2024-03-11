Rails.application.routes.draw do
  
  root to: 'homes#top'
  get "/about"=>"homes#about", as: 'about'
  
  namespace :admin do
    resources :comments, only: [:index, :destroy]
    resources :shops, only: [:index, :destroy]
    resources :fishs, only: [:index, :show, :edit, :create, :destroy]
    resources :customers, only: [:index, :show, :edit, :update]
  end
  
  namespace :public, path: 'customer' do
    resources :comments, only: [:index, :create, :destroy]
    resources :shops, only: [:new, :index, :show, :create, :destroy]
    resources :fishs, only: [:index]
    resources :prefectures, only: [:index]
    resources :customers, only: [:shoe, :edit, :update]
  end
  
  devise_for :customers,skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
