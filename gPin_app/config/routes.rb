Rails.application.routes.draw do
  # root directory
  # root 'pins#index'
  # #index
  # get '/pins', to: 'pins#index'
  # #create
  # post '/pins', to: 'pins#create'
  # #new
  # get '/pins/new', to: 'pins#new'
  # #show
  # # rails s throwing errors when I include as:
  # get('/pins/:id', {to: 'pins#show', as: :pin}) #why?

  # #edit
  # get '/pins/:id/edit', to: 'pins#edit'

  # #patch
  # patch '/pins/:id', to: 'yoyos#update'

  # #delete
  # delete 'pins/:id', to: 'yoyos#destroy'

  resources :pins # Couldn't get my update pin to submit without using resources :pin.  WHY!!?!?!
end
