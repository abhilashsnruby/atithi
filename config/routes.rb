Rails.application.routes.draw do
  get 'room_allotments/index'

  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers

  resources :rooms
end
