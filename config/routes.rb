Rails.application.routes.draw do
  get '/employees', to: 'employees#index'
  namespace :api do 
    namespace :v1 do 
      get '/employees', to: 'employees#index'
    end
  end  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
