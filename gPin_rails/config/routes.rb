Rails.application.routes.draw do
  root 'pins#index'
  resources :pins

  # get '/pins', to: 'pins#index'
  # get '/pins/new', to: 'pins#new'#pins is controler #new is action,in controller #new is method
  # post '/pins', to: 'pins#create'
  # get '/pins/:id', to: 'pins#show', as: :pin #adding a prefex and is casscading foo 
  # put '/pins/:id', to: 'pins#update'#put replace everything on server
  # patch '/pins/:id', to: 'pins#update'
  # get '/pins/:id/edit', to: 'pins#edit'
  # delete '/pins/:id', to: 'pins#destroy'
end
