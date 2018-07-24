Spree::Core::Engine.add_routes do
  resources :dashboards, only: [:index]
end
