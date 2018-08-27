Rails.application.routes.draw do
  devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"

   
  
  authenticated :user do 
  root  'main#home'
  end
  
  unauthenticated :user do 
  root 'main#unregistered'
  end

end
 