Rails.application.routes.draw do
  devise_for :users
  #get 'welcome/index'

  root 'welcome#index'
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/favourites'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
