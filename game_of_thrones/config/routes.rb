Rails.application.routes.draw do
  resources :houses

  root 'welcome#index'
end
