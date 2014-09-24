MUSGFinal2::Application.routes.draw do
 
  get "static/index"
  resources :true_shades
  resources :makeups
  resources :users
  resource :session
  resources :reviews
  resources :user_makeups

  # testing testing
  
  scope '/api' do
    resources :makeups, defaults: { format: :json }
    resources :reviews, defaults: { format: :json }
    resource :static, defaults:   { format: :json }
  end 

  root 'welcome#index'

end
 
