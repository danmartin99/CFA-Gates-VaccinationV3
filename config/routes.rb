Rails.application.routes.draw do
  resources :projects
  resources :patients
  resources :vaccinators
  resources :grcrds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
