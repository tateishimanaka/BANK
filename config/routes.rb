Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admin/sessions',
    passwords: 'admin/passwords',
    registrations: 'admin/registrations'
  }

  devise_for :stores, controllers: {
    sessions: 'store/sessions',
    passwords: 'store/passwords',
    registrations: 'store/registrations'
  }

  scope module: :store do
    root to: "homes#top"
    resources :individual_projects, only: [:new, :create, :show, :index, :edit, :update]
    resources :corporation_projects, only: [:new, :create, :show, :index, :edit, :update]
    resources :stores, only: [:show]
  end

  namespace :admin do
    root to: "homes#top"
    get "/about" => "homes#about"
    resources :collaterals, only: [:index, :create, :edit, :update]
    resources :use_of_funds, only: [:index, :create, :edit, :update]
    resources :fund_types, only: [:index, :create, :edit, :update]
  end
end
