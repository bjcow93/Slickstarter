Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :projects, only: [:create, :edit, :index, :show]
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :categories, only: [:create, :show]
    resources :project_categories, only: [:create]
    resources :backings, only: [:create, :edit, :destroy, :show]

    get '/search' => 'search#filter'
    # get '/projects/search' => 'projects#search'
  end 

  root "static_pages#root"
end
