Rails.application.routes.draw do
  root 'patients#index'
  resources :patients do
    resources :locations
  end
end
