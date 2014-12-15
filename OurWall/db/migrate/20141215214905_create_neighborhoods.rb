class CreateNeighborhoods < ActiveRecord::Migration
  def change
  	create_table :neighborhoods do |t|
  		t.string :name, null: false
  		t.string :password, null: false
  		t.has_many :posts
  end
end