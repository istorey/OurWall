class CreateNeighborhoods < ActiveRecord::Migration
  def change
  	create_table :neighborhoods do |t|
  		t.text :name, null: false
  		t.text :password_digest, null: false
  	end
  end
end
