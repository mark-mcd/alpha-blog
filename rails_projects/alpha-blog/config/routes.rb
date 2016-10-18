Rails.application.routes.draw do

  root 'welcome#home'
 
  get 'about', to: 'welcome#about'
  
  resources :articles
  #new path, post, edit, delete, index article atec
  # rake routes grep articles => to check
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# get 'welcome/home', to: 'welcome#home'