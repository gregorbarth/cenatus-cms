class ContentArea < ActiveRecord::Base
  
  has_and_belongs_to_many :pages
  
  validates_presence_of :name, :sort_order
  
end
