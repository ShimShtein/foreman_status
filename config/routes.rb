Rails.application.routes.draw do
  get 'status2', to: 'foreman_status/status#index'
end

ForemanStatus::Engine.routes.prepend do
  get 'status', to: 'foreman_status/status#index'
end
