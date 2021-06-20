Rails.application.routes.draw do
  resources :companies, :only => [:index, :show, :create, :destroy, :new]
  resources :employees, :only => [:index, :show, :create, :destroy, :new]
end
