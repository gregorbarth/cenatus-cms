class AddPageidToContentArea < ActiveRecord::Migration
  def self.up
    add_column :content_areas, :page_id, :integer
  end
 
  def self.down
    remove_column :content_areas, :page_id
  end
end