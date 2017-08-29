Rails.application.routes.draw do
  namespace :admin do
    resources :items
    resources :logs
    root to: "items#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "items#index"
  resources :items, only: [:index] do 
    collection do 
      post 'result'
    end
  end
end
