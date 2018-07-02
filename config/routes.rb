Rails.application.routes.draw do
  get 'topics/new'
  get 'topics/destroy'
  resources :blogs
  get 'page/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'page#home'
end
