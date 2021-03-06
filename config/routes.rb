# frozen_string_literal: true

Rails.application.routes.draw do
  resources :comments
  resources :landlords
  resources :examples, except: %i[new edit]
  get '/my-landlords' => 'landlords#mylandlords'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
end
