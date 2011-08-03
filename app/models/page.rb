class Page < ActiveRecord::Base
  
  has_many :content_areas
  
  validates_presence_of :name, :slug
  
end
