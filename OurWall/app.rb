require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'bcrypt'
require 'pry'

require './config/environments'

require './models/neighborhood'
require './models/post'
require './models/wall'



enable :sessions

#helpers do
#		def current_neighborhood
#			@neighborhood || nil
#		end

#		def current_neighborhood?
#			@neighborhood == nil ? false : true
#		end

before do
		@errors ||= []
end

get '/' do
	erb :index
end

post '/login' do
		
		@neighborhood = Neighborhood.find_by(name: params[:neighborhoodlist])

		if @neighborhood
			session[:name] = neighborhood.name
			redirect('/neighborhood')

		else 
			@errors << "Wrong password"
			redirect('/')
	end
end

get '/neighborhood' do
		@post = Post.all

	erb :neighborhood

end

post '/wall' do
	
	erb :wall
end

put '/wall' do
	@post = Post.new(params[:image])
end


#binding 'pry'

