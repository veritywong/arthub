Rails.application.routes.draw do
  root "sites#index"

  resources :studios
  resources :sites

end
