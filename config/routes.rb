Webestudio::Application.routes.draw do
  resources :contacts


  devise_for :admins, controllers: { sessions: "admins/sessions" }

  root to: 'site#index'
  match 'admin' => 'site#admin'
  get 'services' => 'site#services'
  get 'send_email' => 'email#send_email'
  get 'send_admin_email' => 'email#send_admin_email'
  resources :links
  resources :services
  resources :users
  resources :sliders
  resources :contents
end
