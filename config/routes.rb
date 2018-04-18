Rails.application.routes.draw do
  get 'room_allotments/index'

  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers,  except: [:show] do
    get 'allot_room', on: :collection
  end

  resources :rooms, except: [:show] do
    get 'find_by_filter', on: :collection
  end

  resources :room_allotments

end
