Rails.application.routes.draw do
  root 'landing_page#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :file_transfers
end
