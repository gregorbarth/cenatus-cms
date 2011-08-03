class ContentArea < ActiveRecord::Base
  
  belongs_to :page
  
  validates_presence_of :name, :sort_order
  
end