Ahme::Application.routes.draw do

  resources :AnnouncementsController

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root :to => "home#index"
  ActiveAdmin.routes(self)
end
