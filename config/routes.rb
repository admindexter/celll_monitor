CelllMonitor::Application.routes.draw do

  resources :users
  resources :sessions,   :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]

  match '/signup',  :to => 'users#new'

  match '/signin',  :to => 'sessions#new'

  match '/signout', :to => 'sessions#destroy'

  match '/contact', :to => 'pages#contact'

  match '/faq', :to => 'pages#faq'

  match '/help', :to => 'pages#help'

  match '/about', :to => 'pages#about'

  match '/community', :to => 'pages#community'

  match '/gallery', :to => 'pages#gallery'

  match '/multimedia', :to => 'pages#multimedia'

  match '/ranking', :to => 'pages#ranking'

  match '/blog', :to => 'pages#blog'

  root :to => "pages#home"

end

