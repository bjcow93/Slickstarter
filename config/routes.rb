Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :projects, only: [:create, :edit, :index, :show]
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy, :show]
  end 

  root "static_pages#root"
end
