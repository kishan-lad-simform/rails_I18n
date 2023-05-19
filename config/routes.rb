Rails.application.routes.draw do
  root 'users#index'
  get '/language', to: "users#change_language"
  scope "(:locale)", locale: /en|nl/ do
    resources :users, only: [ :new, :create, :index, :destroy ]
  end
  # scope "(:locale)", locale: /en|nl/ do
  #   resources :books
  # end
end
