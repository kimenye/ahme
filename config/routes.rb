Ahme::Application.routes.draw do

  resources :post_comments


  #resources :comments


  mount Rich::Engine => '/rich', :as => 'rich'

  resources :AnnouncementsController

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root :to => "home#index"
  match 'comment' => 'home#post_a_comment', :as => :comment
  ActiveAdmin.routes(self)
end
