Rails.application.routes.draw do
  root 'home#show'

  get '/cinema', to: 'home#cinema'
  get '/showings', to: 'home#showings'
end
