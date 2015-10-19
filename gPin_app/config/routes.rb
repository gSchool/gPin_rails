Rails.application.routes.draw do
  # root directory
  root 'pins#index'
  #index
  get '/pins', to: 'pins#index'
  #create
  post '/pins', to: 'pins#create'
  #new
  get 'pins/new', to: 'pins#new'
  #show
  # rails s throwing errors when I include as:
  # get 'pins/new/:id', to: 'pins#show', as: :pins #why?

end
