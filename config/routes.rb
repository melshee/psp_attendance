Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    resources :brothers, only: [:index, :new, :create]
    
    get '/brother/:id', to: 'brothers#show', as: 'brother'
    
    get '/', to: 'brothers#index'
    get '/home', to: 'brothers#index' 
    #used in admin view to link back to home page 
    get 'list', to: 'brothers#list'
    get 'admin', to: 'brothers#admin'
    
end
