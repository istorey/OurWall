class CreateWalls < ActiveRecord::Migration
  def change
  	create_table :walls do |t|
  	has_many :posts through: :neighborhood
  end
end
