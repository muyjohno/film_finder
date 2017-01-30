Rails.application.routes.draw do
  root 'home#show'

  get '/cinema', to: 'home#cinema'
end
