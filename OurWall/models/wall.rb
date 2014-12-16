class Wall < ActiveRecord::Base
	belongs_to :neighborhoods
	has_many :posts, through: :neighborhoods
end