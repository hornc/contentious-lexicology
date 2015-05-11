Rails.application.routes.draw do
  get 'fact/index'
  root 'fact#index'
end
