RailsAdmin.config do |config|
  config.models do
    list do
      sort_by :updated_at
    end
  end
end