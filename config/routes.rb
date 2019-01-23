Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#home'

  #get 'welcome/home', to: 'welcome#home'
  get 'about', to: 'welcome#about'

  get 'page/home', to: 'page#home'
  get 'page/about', to: 'page#about'

end
