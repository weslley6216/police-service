# frozen_string_literal: true

Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  namespace :v1 do
    resources :policies, only: %i[index show], param: :number
  end
end
