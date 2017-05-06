Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'worship_place#index'
  post '', to: 'worship_place#search'
end
