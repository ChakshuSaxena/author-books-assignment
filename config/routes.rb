Rails.application.routes.draw do
  root 'authors#index'
  resources :books
  resources :authors, except: [:index]

  namespace :api do
  	scope module: :v1, :path => "v1" do
  		resources :authors, :only => [:show]
  	end
  end  
end
