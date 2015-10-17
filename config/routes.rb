Rails.application.routes.draw do

  root 'pins#index'
  get '/pins', to: 'pins#index'
  get '/pins/new', to: 'pins#new'
  post '/pins', to: 'pins#create'

end
