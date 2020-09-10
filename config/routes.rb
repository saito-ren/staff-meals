Rails.application.routes.draw do
  namespace :admin do
   resources :categorys, only: [:index, :create]
   resources :menus, only: [:index, :new, :create, :show, :edit, :update]
   resources :orders, only: [:index]
   resources :employees only: [:index, :show]
  end

  namespace :employee do
  	resources :orders, only: [:index, :show, :create]
  	get 'orders/thank' => 'orders#thank'
    resources :menus, only: [:index, :show]
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
