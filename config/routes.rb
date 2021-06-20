Rails.application.routes.draw do
  root :to => "companies#index"

  resources :companies, :only => [:index, :show, :create, :destroy, :new]
  resources :employees, :only => [:index, :show, :create, :destroy, :new]
end
