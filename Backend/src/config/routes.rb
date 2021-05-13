Rails.application.routes.draw do
  post 'user/register'
  post 'user/login'
  get 'user/check'
  root 'hello#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
