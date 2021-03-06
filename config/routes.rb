Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'about' ,to: 'welcome#about'
  get 'test', to: 'welcome#test'
  resources :bookings do
    member do
      get :delete
    end
  end

  get 'signup', to: 'users#joke'

  get 'okyouaremyfriend', to: 'users#new'

  resources :users , except:[:new] do
    member do
      get :delete
    end
  end

  get 'get_in', to:'sessions#new'
  post 'get_in', to:'sessions#create'
  get 'bye', to:'sessions#delete'

  resources :categories, except:[:delete]
end
