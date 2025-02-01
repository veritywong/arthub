Rails.application.routes.draw do
  root "sites#index"

  resources :studios
  resources :sites
  resources :members

end
