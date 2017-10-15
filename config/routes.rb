Rails.application.routes.draw do
#  get 'urls/index'
get "/" => 'urls#index'
root 'urls#index'
resources :urls
end
