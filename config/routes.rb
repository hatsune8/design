Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#top'

  resources :lists

  get 'list/pop' => 'lists#pop'
  get 'list/natural' => 'lists#natural'
  get 'list/elegant' => 'lists#elegant'
  
  resources :words
  

end
