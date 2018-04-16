Rails.application.routes.draw do
  get 'room_allotments/index'

  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers,  except: [:show] do
    get 'allot_room', on: :collection
  end

  resources :rooms

  resources :room_allotments

end
