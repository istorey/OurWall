require_relative "../config/environments"
require_relative "../models/neighborhood"
require_relative "../models/wall"
require_relative "../models/post"

Neighborhood.create([

	{ :name => "Bloomingdale", :password_digest => "hispterville"},
	{ :name => "Shaw", :password_digest => "upandcomming"},
	{ :name => "Brookland", :password_digest => "brooklandsfinest"},
	{ :name => "Adams Morgan", :password_digest => "partyatdans"},

	])


Wall.create([
 
  { :neighborhood_id => 1, :image_id => 1 },
  { :neighborhood_id => 1, :image_id => 2 },
])

Post.create([
 
  { :image => "http://i.imgur.com/o9TMWDZ.jpg" },
  { :image => "http://i.imgur.com/eDgHj1T.jpg" },
])