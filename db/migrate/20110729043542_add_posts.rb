class AddPosts < ActiveRecord::Migration
  def self.up
	add_column :posts, :post_by, :string
	add_column :comments, :commentor, :string
	
  end

  def self.down
	remove_column :posts, :post_by
	remove_column :comments, :commentor
  end
end
