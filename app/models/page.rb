class Page < ActiveRecord::Base
  
  has_many :content_areas
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :assets
  
  validates_presence_of :name, :slug 
  
  
                        
  rails_admin do
    show do
      field :id
      field :name
      field :slug

      # field :website_url do
      #   formatted_value do
      #     if value.blank?
      #       "EMPTY"
      #     else
      #       bindings[:view].link_to value, value
      #     end
      #   end
      # end

      field :content_areas
      field :assets, :has_and_belongs_to_many_association
      field :categories, :has_and_belongs_to_many_association

      field :created_at
      field :updated_at

    end  
  end
end
