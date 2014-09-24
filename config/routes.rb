MUSGFinal2::Application.routes.draw do
 
  resources :collections
  resources :true_shades
  resources :makeups
  resources :users
  resource :session
  resources :reviews
  resources :user_makeups
  
  scope '/api' do
    resources :makeups, defaults: { format: :json }
  end

  root 'welcome#index'

end
 
