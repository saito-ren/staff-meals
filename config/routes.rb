# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'employee/employees#top'
  post 'category_create' => 'admin/categorys#create'
  namespace :admin do
    resources :categorys, only: %i(index create edit update)
    resources :menus, only: %i(index new create show edit update destroy)
    resources :orders, only: [:index]
    resources :employees, only: %i(index show)
    get '/search' => 'search#search'
  end

  namespace :employee do
    get '/employees/top' => 'employees#top'
    get '/employees/about' => 'employees#about'
    get '/employees/withdraw' => 'employees#withdraw'
    patch '/employees/hide' => 'employees#hide'
    resources :orders, only: %i(index create)
    get 'orders/thank' => 'orders#thank'
    resources :menus, only: %i(index show)
    resources :employees, only: %i(show edit update)
  end

  devise_for :employees, controllers: {
    sessions: 'employees/sessions',
    registrations: 'employees/registrations',
  }
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations',
  }
  namespace :admin do
    get 'homes/top'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
