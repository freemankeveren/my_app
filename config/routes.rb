Rails.application.routes.draw do

root 'people#index'

resources :people


  # get 'people/index'
  #
  # get 'people/show'
  #
  # get 'people/new'
  #
  # get 'people/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
