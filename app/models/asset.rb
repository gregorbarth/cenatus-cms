class Asset < ActiveRecord::Base
  
  has_and_belongs_to_many :pages
  
  validates :name, :presence => true
  
  # has_attached_file :asset, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :bucket => 'virgin.s3.amazonaws.com', :path => ":attachment/:id/:style.:extension", :styles => { :medium => "120x120>", :thumb => "40x40>" }
  has_attached_file :asset, :styles => { :medium => "120x120>", :thumb => "40x40>" }
  
  attr_accessor :delete_image
  before_save { self.asset   = nil if self.delete_image == '1' }
  
  rails_admin do
    edit do
      field :name 
      field :description

      field :asset do
        label "File"
          thumb_method :thumb # for images. Will default to full size image, which might break the layout
          # delete_method :delete_asset # actually not needed in this case: default is "delete_#{field_name}" if the object responds to it
      end 
    end
    
    list do
      field :name
      field :description
      field :asset do        
        formatted_value do # used in form views
          bindings[:view].tag(:img, { :src => bindings[:object].asset.url(:thumb) })
        end          
       thumb_method :thumb # for images. Will default to full size image, which might break the layout
      end
      field :created_at
      field :updated_at
    end
  end

  def asset_s3_url
    self.asset.url
  end

end
