Rails.application.routes.draw do
  get '/ViewGossip/:id', to: "gossips#ViewGossip", as:'detail_gossip'
  get '/ViewProfile/:id', to: "gossips#ViewProfile", as:'detail_user'
  get '/', to: "home#Show"
  get '/welcome/:first_name', to: "welcome#name" 
  get '/team', to: "static_pages#team"
  get '/contact', to: "static_pages#contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
