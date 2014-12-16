class CreateWalls < ActiveRecord::Migration
  def change
  	create_table :walls do |t|
  	t.integer :neighborhood_id, null: false
  	t.integer :image_id, null: false
  	end
  end
end
