Rails.application.routes.draw do
#  get 'contact#index'

get 'contact', to: "contact#index"
post 'contact', to: "contact#mail"

#  get 'contact/mail'
#  post 'contact#mail'
  root 'welcome#index'
  devise_for :users
  resources :projects
  resources :patients
  resources :vaccinators
  resources :grcrds
  resources :mailbox

  # mailbox folder routes
 get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
 get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
 get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

 # conversations
 resources :conversations do
   member do
     post :reply
     post :trash
     post :untrash
   end
 end

  # root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
