class CreateContentAreaPage < ActiveRecord::Migration
  def self.up
    create_table :content_areas_pages, :id => false do |t|
      t.integer :page_id      
      t.integer :content_area_id
      t.timestamps
    end
  end  

  def self.down
    drop_table :content_areas_pages   
  end
end
