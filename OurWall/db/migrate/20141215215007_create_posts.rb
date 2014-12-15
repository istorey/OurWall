class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |p|
  		t.integer neighborhood_id: null: false,
  		t. text image_url: null: false
  		t. belongs_to :neighborhood
  end
end
