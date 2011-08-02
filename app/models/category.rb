class Category < ActiveRecord::Base
  
  rails_admin do
    edit do
      field :name 
    end
    list do
      field :name
    end
      field :created_at
      field :updated_at
  end


end
