class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  	t.text :image
  	t.belongs_to :wall
  	end
  end
end
