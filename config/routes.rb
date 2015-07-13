Rails.application.routes.draw do
  root 'pins#index'

  # get '/pins', to: 'pins#index'
  # get '/pins/new'
  # get '/pins/:id', to: 'pins#show', as: 'pin'
  # get '/pins/:id/edit', to: 'pins#edit', as: 'edit_pin'

  # # CREATE
  # post '/pins', to:'pins#create'

  # # UPDATE
  # patch '/pins/:id', to: 'pins#update'

  # # DESTROY
  # delete '/pins/:id', to: 'pins#destroy'

  resources :pins

#    Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        pins#index
#     pins GET    /pins(.:format)          pins#index
#          POST   /pins(.:format)          pins#create
#  new_pin GET    /pins/new(.:format)      pins#new
# edit_pin GET    /pins/:id/edit(.:format) pins#edit
#      pin GET    /pins/:id(.:format)      pins#show
#          PATCH  /pins/:id(.:format)      pins#update
#          PUT    /pins/:id(.:format)      pins#update
#          DELETE /pins/:id(.:format)      pins#destroy

end
