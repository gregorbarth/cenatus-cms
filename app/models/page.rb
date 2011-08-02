class Page < ActiveRecord::Base
  
  has_and_belongs_to_many :content_areas
  
  validates_presence_of :name
  
end
