Rails.application.routes.draw do
  namespace :admin do
   resources :categorys, only: [:index, :create]
   resources :menus, only: [:index, :new, :create, :show, :edit, :update]

  end
  namespace :admin do
    get 'orders/index'
  end
  namespace :admin do
    get 'employees/index'
    get 'employees/show'
  end
 
  devise_for :employees, controllers: {
  	sessions: 'employees/sessions',
  	registrations: 'employees/registrations'
  }
  devise_for :admins, controllers: {
  	sessions: 'admins/sessions',
  	registrations: 'admins/registrations'
  }
  namespace :admin do
    get 'homes/top'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
