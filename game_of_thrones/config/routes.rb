Rails.application.routes.draw do
  resources :houses do
    resources :characters
  end

  root 'welcome#index'
end
