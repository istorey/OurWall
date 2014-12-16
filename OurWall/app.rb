require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pry'

require './config/environments'

require './models/neighborhood'
require './models/post'
require './models/wall'



enable :sessions

get '/' do
	erb :index
end

post '/login' do
		
		@neigh = Neighborhood.find_by(name: params[:neighborhoodlist])
		@neigh.name

		if @neigh.password_digest == params[:password]
			#logged in with some kind of section functionality
			redirect('/neighborhood')

		else 
			@errors << "Wrong password"
			redirect('/')
	end
end

get '/neighborhood' do


	erb :neighborhood

end

post '/wall' do
	
	erb :wall
end

#binding 'pry'

