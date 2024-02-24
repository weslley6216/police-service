# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :v1 do
    resources :policies, only: %i[index show], param: :number
  end
end
