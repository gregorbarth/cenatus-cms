class PaperclipFields < ActiveRecord::Migration
  def self.up
    add_column :assets, :asset_file_name, :string
    add_column :assets, :asset_content_type, :string
    add_column :assets, :asset_file_size, :integer
    add_column :assets, :asset_updated_at, :datetime
  end

  def self.down
    add_column :assets, :asset_file_name
    add_column :assets, :asset_content_type
    add_column :assets, :asset_file_size
    add_column :assets, :asset_updated_at
  end
end
