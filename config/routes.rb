Spree::Core::Engine.add_routes do
  resources :dashboards, only: [:index], defaults: { format: :json }
end
