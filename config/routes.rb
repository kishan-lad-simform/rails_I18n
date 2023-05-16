Rails.application.routes.draw do
  root 'users#index'
  
  scope "/:locale" do
    resources :users, only: [ :new, :create, :index, :destroy ]
  end
end
