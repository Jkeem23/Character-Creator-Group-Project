Rails.application.routes.draw do
  get 'welcome/index'
  get 'game_info/info'
  
  resources :characters do
    resources :gatherers
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
