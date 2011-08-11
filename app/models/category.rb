class Category < ActiveRecord::Base
  
  has_and_belongs_to_many :pages
  
  rails_admin do
    # edit do
    #   field :name 
    # end
    # list do
    #   field :name
    #   field :created_at
    #   field :updated_at
    # end

  end


end
