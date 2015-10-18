Rails.application.routes.draw do
  root 'pins#index'
  get '/pins', to: 'pins#index'
  get '/pins/new', to: 'pins#new'
  post '/pins', to: 'pins#create'
  get '/pins/:id', to: 'pins#show', as: :pin #???not sur what's going on here
  put '/pins/:id', to: 'pins#update'
  patch '/pins/:id', to: 'pins#update'
  get '/pins/:id/edit', to: 'pins#edit'
  delete '/pins/:id', to: 'pins#destroy'
end
