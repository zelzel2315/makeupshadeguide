MUSGFinal2::Application.routes.draw do
  resources :true_shades
  resources :makeups
  resources :users
  resource :session
  scope '/api' do
    resources :makeups, defaults: { format: :json }
  end

  root 'welcome#index'

end
 
