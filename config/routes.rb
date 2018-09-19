Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'tutorial' => "home#tutorial"


  get 'login' => "users#login_form"
  post "login" => "users#login"
  get "user/:id" => "users#index"
  post "logout" => "users#logout"


  get '/' => "posts#index"
  get 'create' => "posts#create"
  post "posts/create" => "posts#create2"
  get 'preview/:id' => "posts#preview"
  get 'complete/:id' => "posts#complete"
  get "edit/:id" => "posts#edit"
  post "update/:id" => "posts#update"
  post "destroy/:id" => "posts#destroy"
  get "/:id" => "posts#show"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
