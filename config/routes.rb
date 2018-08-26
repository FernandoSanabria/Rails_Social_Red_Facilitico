Rails.application.routes.draw do
  devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root 'main#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/incomplete_sign_up", to: "users/omniauth_callbacks#incomplete_sign_up"

   
  
  authenticated :user do 
  root  'main#home'
  end
  
  unauthenticated :user do 
    root 'main#unregistered'
  end

end
 