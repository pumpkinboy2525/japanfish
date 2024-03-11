Rails.application.routes.draw do
  
  namespace :admin do
    get 'comments/index'
  end
  namespace :admin do
    get 'shops/index'
  end
  namespace :admin do
    get 'fishs/index'
    get 'fishs/show'
    get 'fishs/edit'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :public do
    get 'comments/index'
  end
  namespace :public do
    get 'shops/new'
    get 'shops/index'
    get 'shops/show'
  end
  namespace :public do
    get 'fishs/index'
  end
  namespace :public do
    get 'prefectures/index'
  end
  devise_for :customers,skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }
  
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
